class MasterCourseSchedulesController < ApplicationController
  require "axlsx"

  before_action :find_master_course_schedule, only: :destroy
  before_action :find_master_class_subject, :valid_time_pick, only: [:create, :destroy]
  before_action :check_slot_count, :check_master_course_schedule_time, only: :create
  before_action :check_own_master_class_subject, only: :destroy
  before_action :find_master_course, only: :index

  def index
    if params[:format] == "xls"
      @master_class_subjects = @master_course.master_class_subjects
        .includes(master_course_schedules: [master_class_subject: [:room,
        :master_class, :master_subject]]).by_user current_user
      respond_to do |format|
        format.html
        format.xls {send_xls}
      end
    else
      search_class_subject = @master_course.master_class_subjects.includes(:master_class).by_user(current_user).search params[:q]
      @support = Supports::MasterCourseSchedule.new(master_course: @master_course,
        search: search_class_subject, master_class_subjects: search_class_subject.result)
      @master_course_schedules = MasterCourseSchedule.by_class_subject(search_class_subject.result).
        order_by_date.page(params[:page]).per Settings.per_page.default
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  def create
    master_course_schedule = @master_class_subject.master_course_schedules.build master_course_schedule_params
    if master_course_schedule.save
      render json: {
        master_course_schedule: master_course_schedule,
        picked_schedules: @master_class_subject.master_course_schedules.size
      }
    else
      render json: {errors: t("errors.not_created",
        model_name: MasterCourseSchedule.name), status: 500}
    end
  end

  def destroy
    if @master_course_schedule.destroy
      render json: {
        master_course_schedule: @master_course_schedule,
        picked_schedules: @master_class_subject.master_course_schedules.size
      }
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

  def find_master_course
    @master_course = MasterCourse.find_by id: params[:master_course_id]
    unless @master_course
      redirect_to root_path
    end
  end

  def send_xls
    book = Axlsx::Package.new
    book.use_autowidth = false
    workbook = book.workbook
    sheet = workbook.add_worksheet name: t(".sheet_name")
    style = workbook.styles
    cell = style.add_style alignment: {wrap_text: true}
    sheet.column_widths 40, 30, 38, 10
    sheet.add_row [t(".subject"), t(".class"), t(".schedule"), t(".room")]
    create_data.each_with_index do |item|
      sheet.add_row [item[0], item[1], item[2], item[3]],
        style: [cell, cell, cell, cell]
    end
    send_excel_file book
  end

  def send_excel_file book
    tmp_file_path = "#{Rails.root}/tmp/#{rand(36**50).to_s(36)}.xlsx"
    book.serialize tmp_file_path
    filename = "MasterCourseSchedule.xlsx"
    file_content = File.read(tmp_file_path)
    send_data file_content, filename: filename
    File.delete tmp_file_path
  end

  def create_data
    return if @master_class_subjects.blank?
    data = []
    @master_class_subjects.each do |master_class_subject|
      schedules = ""
      if master_class_subject.master_course_schedules.any?
        master_class_subject.master_course_schedules.each.with_index 1 do |mcs, index|
          schedules << "#{mcs.date.strftime("%a-%d-%m-%Y")}-#{t(".#{mcs.slot}")}, "
        end
      end
      cell = ["#{master_class_subject.master_subject_code} - #{master_class_subject.master_subject_name}",
        master_class_subject.master_class_name, schedules, master_class_subject.room_name]
      data << cell
    end
    return data
  end
end
