class Admin::MasterCoursesController < Admin::BaseController
  before_action :find_master_course, except: [:index, :new, :create]

  def index
    @master_course = MasterCourse.new
    @search = MasterCourse.search params[:q]
    @master_courses = @search.result.page(params[:page]).per Settings.per_page.default
  end

  def show
    @master_class_subject = @master_course.master_class_subjects.new
    @search = @master_course.master_class_subjects.search params[:q]
    @master_class_subjects = @search.result.page(params[:page]).per Settings.per_page.default
  end

  def create
    @master_course = MasterCourse.new master_course_params
    if @master_course.save
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    redirect_to admin_master_courses_path
  end

  def update
  end

  def destroy
    if @master_course.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t "fail"
    end
    redirect_to admin_master_courses_path
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
