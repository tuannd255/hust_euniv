class Admin::RoomsController < Admin::BaseController

  def index
    @search = Room.search params[:q]
    @rooms = @search.result.page(params[:page]).per Settings.per_page.default
    respond_to do |format|
      format.html
      format.js
      format.json {render json: @rooms.to_json}
    end
  end
end
