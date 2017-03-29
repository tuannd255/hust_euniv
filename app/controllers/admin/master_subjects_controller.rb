class Admin::MasterSubjectsController < ApplicationController
  before_action :find_master_subject, except: [:index, :new, :create]

  def index
    @master_subject = MasterSubject.new
    @search = MasterSubject.search params[:q]
    @master_subjects = @search.result.page(params[:page]).per Settings.per_page.default
  end

  def new
    @master_subject = MasterSubject.new
  end

  def create
    @master_subject = MasterSubject.new mastet_subject_params
    if @master_subject.save
      flash[:success] = t ".successa"
    else
      flash[:danger] = t "fail"
    end
      redirect_to admin_master_subjects_path
  end

  def edit
  end

  def update
    if @master_subject.update_attributes mastet_subject_params
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
      redirect_to admin_master_subjects_path
  end

  def destroy
    if @master_subject.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
      redirect_to admin_master_subjects_path
  end

  private
  def mastet_subject_params
    params.require(:master_subject).permit :code, :name, :creadit
  end

  def find_master_subject
    @master_subject = MasterSubject.find_by_id params[:id]
    redirect_to admin_master_subjects_path if @master_subject.nil?
  end
end
