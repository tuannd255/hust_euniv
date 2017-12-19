class Admin::MasterClassSubjectsController < Admin::BaseController
  before_action :load_and_handle_course, only: [:new, :create]
  before_action :find_master_class_subject, except: [:index, :new, :create]

  def new
    master_class_subject = @master_course.master_class_subjects.new
    @support = Supports::MasterClassSubject.new master_course: @master_course,
      master_class_subject: master_class_subject
  end

  def create
    master_class_subject = @master_course.master_class_subjects.new master_class_subject_params
    if master_class_subject.save
      master_class_subject.init_master_class_class_subject(master_class_subject_params[:master_class_id])
      CreateNotificationService.new(user_id: master_class_subject.user_id,
        master_class_subject_id: master_class_subject.id).perform
      flash.now[:success] = t ".success"
    end
    search = @master_course.master_class_subjects.id_desc.search params[:q]
    master_class_subjects = search.result.page(params[:page]).per Settings.per_page.default
    @support = Supports::MasterClassSubject.new master_course: @master_course,
      search: search, master_class_subjects: master_class_subjects,
      master_class_subject: (master_class_subject.valid? ?
        @master_course.master_class_subjects.new : master_class_subject)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @master_course_schedules = @master_class_subject.master_course_schedules
    respond_to do |format|
      format.js
    end
  end

  def edit
    @support = Supports::MasterClassSubject.new master_course: @master_class_subject.master_course,
      master_class_subject: @master_class_subject
    respond_to do |format|
      format.js
    end
  end

  def update
    if @master_class_subject.update_attributes master_class_subject_params
      master_class_subject.init_master_class_class_subject(master_class_subject_params[:master_class_id])
      search = @master_class_subject.master_course.master_class_subjects.id_desc.search params[:q]
      master_class_subjects = search.result.page(params[:page]).per Settings.per_page.default
      @support = Supports::MasterClassSubject.new master_course: @master_course,
        search: search, master_class_subjects: master_class_subjects
      flash.now[:success] = t ".success"
    end
    respond_to do |format|
      format.js
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
    params.require(:master_class_subject).permit :name, :master_subject_id,
      :master_course_id, :user_id, :room_id, master_class_id: []
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

  def load_and_handle_course
    @master_course = MasterCourse.find_by id: params[:master_course_id]
    unless @master_course
      flash[:danger] = t ".master_course_not_found"
      redirect_to admin_master_courses_path
    end
  end
end
