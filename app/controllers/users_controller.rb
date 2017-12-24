class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :check_owner, only: [:edit, :update]

  def show
  end

  def edit
    @support = Supports::User.new user: @user
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @user.update_attributes user_params
      flash.now[:success] = t ".success"
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def user_params
    params.require(:user).permit :avatar, :name, :email, :phone_number, :story,
      :workplace, :position_id
  end

  def find_user
    @user = User.find_by id: params[:id]
    unless @user
      flash[:danger] = t "errors.not_found", model_name: t("admin.users.title")
      redirect_to root_path
    end
  end

  def check_owner
    unless @user === current_user
      flash.now[:danger] = t "errors.not_owner"
      respond_to do |format|
        format.js { render :update }
      end
    end
  end
end
