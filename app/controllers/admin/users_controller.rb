class Admin::UsersController < Admin::BaseController

  def index
    @search = User.search params[:q]
    @users = @search.result.page(params[:page]).per Settings.per_page.default
    respond_to do |format|
      format.html
      format.js
      format.json {render json: @users.to_json}
    end
  end
end
