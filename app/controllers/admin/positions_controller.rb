class Admin::PositionsController < Admin::BaseController
  before_action :find_position, except: [:index, :new, :create]

  def index
    search = Position.search params[:q]
    @support = Supports::PositionSupport.new search: search
    @positions = search.result.id_desc.page(params[:page]).per Settings.per_page.default
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @position = Position.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @position = Position.new position_params
    if @position.save
      flash.now[:success] = t ".success"
      search = Position.id_desc.search params[:q]
      positions = search.result.id_desc.page(params[:page]).
        per Settings.per_page.default
      @support = Supports::PositionSupport.new search: search,
        positions: positions
    end
    respond_to do |format|
      format.js
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    if @position.update_attributes position_params
      flash[:success] = t ".success"
      redirect_to admin_positions_path
    else
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    if @position.delete
      flash[:success] = t ".success"
      redirect_to admin_positions_path
    end
  end

  private
  def position_params
    params.require(:position).permit :name, :full_name
  end

  def find_position
    @position = Position.find_by id: params[:id]
    unless @position
      redirect_to root_path
    end
  end
end
