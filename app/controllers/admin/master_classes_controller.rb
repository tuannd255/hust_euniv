class Admin::MasterClassesController < Admin::BaseController
  before_action :find_master_class, except: [:index, :new, :create]

  def index
    @master_class = MasterClass.new
    @search = MasterClass.search params[:q]
    @master_classes = @search.result.page(params[:page]).per Settings.per_page.default
    respond_to do |format|
      format.html
      format.json {render json: @master_classes.to_json}
    end
  end

  def create
    @master_class = MasterClass.new master_class_params
    if @master_class.save
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
  end

  def update
    if @master_class.update_attributes master_class_params
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    redirect_to admin_master_classes_path
  end

  def destroy
    if @master_class.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    redirect_to admin_master_classes_path
  end

  private
  def master_class_params
    params.require(:master_class).permit :code, :name, :creadit
  end

  def find_master_class
    @master_class = MasterClass.find_by_id params[:id]
    redirect_to admin_master_classes_path if @master_class.nil?
  end
end
