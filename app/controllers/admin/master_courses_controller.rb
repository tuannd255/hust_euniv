class Admin::MasterCoursesController < Admin::BaseController
  before_action :find_master_course, except: [:index, :new, :create]

  def index
    @master_course = MasterCourse.new
    @search = MasterCourse.order_by_created_at.search params[:q]
    @master_courses = @search.result.order_by_created_at.page(params[:page]).
      per Settings.per_page.default
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    class_subject_search = @master_course.master_class_subjects.id_desc.search params[:q]
    master_class_subjects = class_subject_search.result.page(params[:page]).per Settings.per_page.default
    @support = Supports::MasterClassSubject.new master_course: @master_course,
      search: class_subject_search, master_class_subjects: master_class_subjects
  end

  def new
    @master_course = MasterCourse.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @master_course = MasterCourse.new master_course_params
    if @master_course.save
      flash.now[:success] = t ".success"
      search = MasterCourse.order_by_created_at.search params[:q]
      master_courses = search.result.order_by_created_at.page(params[:page]).
        per Settings.per_page.default
      @support = Supports::CourseSupport.new search: search,
        master_courses: master_courses
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
    if @master_course.update_attributes master_course_params
      flash[:success] = t ".success"
      redirect_to [:admin, :master_courses]
    end
    respond_to do |format|
      format.js
    end
  end

  def destroy
    if @master_course.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    redirect_to [:admin, :master_courses]
  end

  private
  def master_course_params
    params.require(:master_course).permit :code, :name, :start_date, :end_date, :status
  end

  def find_master_course
    @master_course = MasterCourse.find_by id: params[:id]
    redirect_to admin_master_courses_path if @master_course.nil?
  end
end
