class MasterCoursesController < ApplicationController
  before_action :find_master_course, except: [:index, :new, :create]

  def index
    @search = MasterCourse.search params[:q]
    @master_courses = @search.result.page(params[:page]).per Settings.per_page.course_index
  end

  def show
    @search = @master_course.master_class_subjects.by_user(current_user).search params[:q]
    @master_class_subjects = @search.result.page(params[:page]).per Settings.per_page.cours_index
  end

  private
  def find_master_course
    @master_course = MasterCourse.find_by id: params[:id]
    redirect_to master_courses_path if @master_course.nil?
  end
end
