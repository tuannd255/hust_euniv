class Admin::MasterSubjectsController < Admin::BaseController
  before_action :find_master_subject, except: [:index, :new, :create]

  def index
    @master_subject = MasterSubject.new
    @search = MasterSubject.search params[:q]
    @master_subjects = @search.result.order_by_created_at.page(params[:page]).
      per Settings.per_page.default
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @master_subject = MasterSubject.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @master_subject = MasterSubject.new master_subject_params
    if @master_subject.save
      flash.now[:success] = t ".success"
      redirect_to [:admin, :master_subjects]
    else
      respond_to do |format|
        format.js
      end
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    if @master_subject.update_attributes master_subject_params
      flash[:success] = t ".success"
      redirect_to admin_master_subjects_path
    else
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    if @master_subject.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    redirect_to [:admin, :master_subjects]
  end

  private
  def master_subject_params
    params.require(:master_subject).permit :code, :name, :creadit
  end

  def find_master_subject
    @master_subject = MasterSubject.find_by id: params[:id]
    redirect_to admin_master_subjects_path if @master_subject.nil?
  end
end
