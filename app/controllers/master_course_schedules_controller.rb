class MasterCourseSchedulesController < ApplicationController
  before_action :find_master_course_schedule, only: :destroy
  before_action :find_master_class_subject, :valid_time_pick, only: [:create, :destroy]
  before_action :check_slot_count, :check_master_course_schedule_time, only: :create
  before_action :check_own_master_class_subject, only: :destroy

  def create
    master_course_schedule = @master_class_subject.master_course_schedules.build master_course_schedule_params
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
    params.require(:master_course_schedule).permit :date, :slot,
      :master_class_subject_id
  end

  def find_master_course_schedule
    @master_course_schedule = MasterCourseSchedule.find_by id: params[:id]
    unless @master_course_schedule
      render json: {errors: t("errors.not_found",
        model_name: MasterCourseSchedule.name), status: 500}
    end
  end

  def find_master_class_subject
    @master_class_subject = if @master_course_schedule
      @master_course_schedule.master_class_subject
    else
      MasterClassSubject.find_by id: params[:master_course_schedule][:master_class_subject_id]
    end
    unless @master_class_subject
      redirect_to root_path
    end
  end

  def check_slot_count
    if @master_class_subject.master_course_schedules.count >= @master_class_subject.slot_count
      render json: {errors: t(".enough_amount",
        model_name: MasterCourseSchedule.name), status: 500}
    end
  end

  def valid_time_pick
    if Time.now + 2.weeks > @master_class_subject.master_course_start_date
      render json: {errors: t(".time_out",
        model_name: MasterCourseSchedule.name), status: 500}
    end
  end

  def check_master_course_schedule_time
    if @master_class_subject.master_course_start_date > params[:master_course_schedule][:date] ||
      @master_class_subject.master_course_end_date < params[:master_course_schedule][:date]
      render json: {errors: t(".invalide_time",
        model_name: MasterCourseSchedule.name), status: 500}
    end
  end

  def check_own_master_class_subject
    unless @master_class_subject.user_id == current_user.id
      render json: {errors: t("errors.not_owner"), status: 500}
    end
  end
end
