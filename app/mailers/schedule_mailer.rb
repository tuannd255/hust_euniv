class ScheduleMailer < ApplicationMailer

  def send_mail user, master_course
    @user = user
    @master_course = master_course
    mail to: user.email, subject: t("mailers.teacher_subject",
      name: master_course.name)
  end
end
