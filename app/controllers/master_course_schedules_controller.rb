class MasterCourseSchedulesController < ApplicationController
  before_action :find_and_check_master_course_schedule, only: :destroy

  def create
    master_course_schedule = MasterCourseSchedule.new master_course_schedule_params
    master_course_schedule.save
    render json: {master_course_schedule: master_course_schedule}
  end

  def destroy
    if @master_course_schedule.destroy
      render json: {master_course_schedule: @master_course_schedule}
    else
      render json: {errors: t("errors.not_deleted",
        model_name: MasterCourseSchedule.name), status: 500}
    end
  end

  private
  def master_course_schedule_params
    params.require(:master_course_schedule).permit :master_class_subject_id,
      :date, :slot
  end

  def find_and_check_master_course_schedule
    @master_course_schedule = MasterCourseSchedule.find_by id: params[:id]
    unless @master_course_schedule
      render json: {errors: t("errors.not_found",
        model_name: MasterCourseSchedule.name), status: 500}
    end
    unless @master_course_schedule.master_class_subject_user_id == current_user.id
      render json: {errors: t("errors.not_owner"), status: 500}
    end
  end
end
