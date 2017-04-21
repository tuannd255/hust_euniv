class Admin::MasterClassSubjectsController < Admin::BaseController
  before_action :handle_condition_create, only: :create
  before_action :find_master_class_subject, except: [:index, :new, :create]

  def create
    @master_class_subject = MasterClassSubject.new master_class_subject_params
    if @master_class_subject.save
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    redirect_to [:admin, @master_course]
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    if @master_class_subject.update_attributes master_class_subject_params
      flash.now[:success] = t ".success"
    end
    respond_to do |format|
      format.json
    end
  end

  def destroy
    if @master_class_subject.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    redirect_to [:admin, @master_class_subject.master_course]
  end

  private
  def master_class_subject_params
    params.require(:master_class_subject).permit :name, :master_class_id, :master_subject_id,
      :master_course_id
  end

  def master_class_exist? master_class_id
    @master_class = MasterClass.find_by id: master_class_id
    return true if @master_class
    false
  end

  def master_subject_exist? master_subject_id
    @master_subject = MasterSubject.find_by id: master_subject_id
    return true if @master_subject
    false
  end

  def master_course_exist? master_course_id
    @master_course = MasterCourse.find_by id: master_course_id
    return true if @master_course
    false
  end

  def handle_condition_create
    unless master_course_exist? params[:master_class_subject][:master_course_id]
      return redirect_to admin_master_courses_path
    end
    if !master_class_exist?(params[:master_class_subject][:master_class_id]) ||
      !master_subject_exist?(params[:master_class_subject][:master_subject_id])
      return redirect_to [:admin, @master_course]
    end
  end

  def find_master_class_subject
    @master_class_subject = MasterClassSubject.find_by id: params[:id]
    redirect_to :back unless @master_class_subject
  end
end
