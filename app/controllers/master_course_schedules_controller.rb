class MasterCourseSchedulesController < ApplicationController

  def create
    master_course_schedule = MasterCourseSchedule.new master_course_schedule_params
    master_course_schedule.save
    render json: {master_course_schedule: master_course_schedule}
  end

  private
  def master_course_schedule_params
    params.require(:master_course_schedule).permit :master_class_subject_id,
      :date, :slot
  end
end
