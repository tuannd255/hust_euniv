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
    @master_subject = MasterSubject.new master_subject_params
    if @master_subject.save
      flash.now[:success] = t ".successa"
      respond_to do |format|
        format.html
        format.js
      end
    else
      flash.now[:danger] = t "fail"
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @master_subject.update_attributes master_subject_params
      flash.now[:success] = t ".success"
    else
      flash.now[:danger] = t "fail"
    end
    render json: {master_subject: @master_subject}
  end

  def destroy
    if @master_subject.destroy
      flash.now[:success] = t ".success"
    else
      flash.now[:danger] = t "fail"
    end
    respond_to do |format|
      format.js
    end
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
