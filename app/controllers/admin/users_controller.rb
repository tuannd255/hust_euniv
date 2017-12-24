class Admin::UsersController < Admin::BaseController
  before_action :find_user, except: [:index, :new, :create]
  before_action :check_user_is_current_user, only: :destroy

  def index
    search = User.search params[:q]
    @support = Supports::User.new search: search
    @users = search.result.order_by_created_at.page(params[:page]).per Settings.per_page.default
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @user = User.new
    @support = Supports::User.new user: @user
    respond_to do |format|
      format.js
    end
  end

  def create
    @user = User.new user_params
    if @user.save
      flash.now[:success] = t ".success"
      search = User.order_by_created_at.search params[:q]
      users = search.result.order_by_created_at.page(params[:page]).
        per Settings.per_page.default
      @support = Supports::User.new search: search,
        users: users
    end
    @support = Supports::User.new user: @user
    respond_to do |format|
      format.js
    end
  end

  def edit
    @support = Supports::User.new user: @user
    respond_to do |format|
      format.js
    end
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = t ".success"
      redirect_to admin_users_path
    else
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    if @user.delete
      flash[:success] = t ".success"
      redirect_to admin_users_path
    end
  end

  private
  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation,
      :status, :position_id
  end

  def find_user
    @user = User.find_by id: params[:id]
    unless @user
      redirect_to root_path
    end
  end

  def check_user_is_current_user
    if current_user == @user
      flash[:danger] = t ".cant_delete_self"
      redirect_to admin_users_path
    end
  end
end
