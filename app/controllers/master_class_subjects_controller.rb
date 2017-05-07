class MasterClassSubjectsController < ApplicationController
  before_action :find_master_class_subject, :find_schedule, only: :edit

  def edit
    respond_to do |format|
      format.js
    end
  end

  private
  def find_master_class_subject
    @master_class_subject = MasterClassSubject.find_by id: params[:id]
    redirect_to admin_master_class_subjects_path if @master_class_subject.nil?
  end

  def find_schedule
    master_class_subjects = MasterClassSubject.same_class_and_time @master_class_subject.master_class_id,
      @master_class_subject.room_id, @master_class_subject.master_course_id
    master_course_schedules = MasterCourseSchedule.where master_class_subject: master_class_subjects
    @master_course_schedules = master_course_schedules.by_user current_user.id
    @other_master_course_schedules = master_course_schedules - @master_course_schedules
  end
end
