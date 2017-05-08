class Admin::MasterCoursesController < Admin::BaseController
  before_action :find_master_course, except: [:index, :new, :create]

  def index
    @master_course = MasterCourse.new
    @search = MasterCourse.search params[:q]
    @master_courses = @search.result.page(params[:page]).per Settings.per_page.default
  end

  def show
    class_subject_search = @master_course.master_class_subjects.search params[:q]
    master_class_subjects = class_subject_search.result.page(params[:page]).per Settings.per_page.default
    @support = Supports::MasterClassSubject.new master_course: @master_course,
      search: class_subject_search, master_class_subjects: master_class_subjects
  end

  def create
    @master_course = MasterCourse.new master_course_params
    if @master_course.save
      flash.now[:success] = t ".success"
      redirect_to [:admin, :master_courses]
    else
      respond_to do |format|
        format.js
      end
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @master_course.update_attributes master_course_params
      flash.now[:success] = t ".success"
    end
    respond_to do |format|
      format.json
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
    params.require(:master_course).permit :code, :name, :start_date, :end_date
  end

  def find_master_course
    @master_course = MasterCourse.find_by id: params[:id]
    redirect_to admin_master_courses_path if @master_course.nil?
  end
end
