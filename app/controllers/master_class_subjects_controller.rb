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
    redirect_to master_courses_path if @master_class_subject.nil?
  end

  def find_schedule
    picked_master_class_subjects = MasterClassSubject.picked_master_class_subject @master_class_subject.master_class_ids,
      @master_class_subject.room_id, current_user.id, @master_class_subject.master_course_id
    all_schedules = MasterCourseSchedule.where master_class_subject_id: picked_master_class_subjects.pluck(:id)
    @master_course_schedules = all_schedules.where master_class_subject_id: @master_class_subject.id
    @picked_master_course_schedules = all_schedules - @master_course_schedules
  end
end
