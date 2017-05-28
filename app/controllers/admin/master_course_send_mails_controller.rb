class Admin::MasterCourseSendMailsController < Admin::BaseController
  before_action :find_master_course, only: :index

  def index
    users = @master_course.master_class_subjects.map &:user
    if users.any?
      users.each do |user|
        MasterCourseMailer.send_mail(user, @master_course).deliver_later
      end

      flash.now[:success] = t "mailers.sended"
      @master_course.update_attributes mail_sended: true
    else
      flash.now[:danger] =  t "errors.not_blank",
        model_name: t("admin.master_class_subjects.title")
    end
    respond_to do |format|
      format.js
    end
  end

  private
  def find_master_course
    @master_course = MasterCourse.includes(master_class_subjects: :user)
      .find_by id: params[:master_course_id]
    unless @master_course
      flash.now[:danger] = t "errors.not_found", model_name: t("master_courses.title")
      respond_to do |format|
        format.js { render :index }
      end
    end
  end
end
