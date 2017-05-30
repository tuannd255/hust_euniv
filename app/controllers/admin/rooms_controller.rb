class Admin::RoomsController < Admin::BaseController
  before_action :find_room, except: [:index, :new, :create]

  def index
    @search = Room.search params[:q]
    @rooms = @search.result.order_by_created_at.page(params[:page]).per Settings.per_page.default
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @room = Room.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @room = Room.new room_params
    if @room.save
      flash.now[:success] = t ".success"
      search = Room.order_by_created_at.search params[:q]
      rooms = search.result.order_by_created_at.page(params[:page]).
        per Settings.per_page.default
      @support = Supports::RoomSupport.new search: search,
        rooms: rooms
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
    if @room.update_attributes room_params
      flash[:success] = t ".success"
      redirect_to admin_rooms_path
    else
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    if @room.delete
      flash[:success] = t ".success"
      redirect_to admin_rooms_path
    end
  end

  private
  def room_params
    params.require(:room).permit :code, :name
  end

  def find_room
    @room = Room.find_by id: params[:id]
    unless @room
      redirect_to root_path
    end
  end
end
