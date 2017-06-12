class MasterCourseSchedule < ApplicationRecord
  belongs_to :master_class_subject

  validates :date, :slot, :master_class_subject_id, presence: true
  validate :check_valid

  after_create :update_class_subject_status
  after_create :send_mail_schedule

  enum slot: [:morning, :afternoon, :evening]

  scope :by_user_subject, -> user_id, master_subject_id do
    joins(:master_class_subject).where "master_class_subjects.user_id = ? &&
      master_class_subjects.master_subject_id = ?",
      user_id, master_subject_id
  end

  scope :by_user, -> user do
    joins(:master_class_subject).where "master_class_subjects.user_id = ?", user.id
  end
  scope :by_class_subject, -> class_subject do
    where master_class_subject: class_subject
  end

  scope :order_by_date, ->{order date: :asc, slot: :asc}

  delegate :user_id, :slot_count, :status, to: :master_class_subject, prefix: true

  private
  def update_class_subject_status
    if master_class_subject_status == "inprogress" &&
      master_class_subject_slot_count == master_class_subject.slot_pick_count
      master_class_subject.update_attributes status: :finished
    elsif master_class_subject_status == "finished" &&
      master_class_subject_slot_count < master_class_subject.slot_pick_count
      master_class_subject.update_attributes status: :inprogress
    end
  end

  def send_mail_schedule
    master_class_subjects = MasterClassSubject.by_user_course master_class_subject.user,
      master_class_subject.master_course
    if master_class_subjects.map(&:slot_count).sum == MasterCourseSchedule.by_class_subject(master_class_subjects).size
      ScheduleMailer.send_mail(master_class_subject.user,
        master_class_subject.master_course).deliver_later
    end
  end

  def check_valid
    picked_master_class_subjects = MasterClassSubject.picked_master_class_subject master_class_subject.master_class_id,
      master_class_subject.room_id, master_class_subject.user_id, master_class_subject.master_course_id
    all_schedules = MasterCourseSchedule.where master_class_subject_id: picked_master_class_subjects.pluck(:id)
    master_course_schedules = all_schedules.where master_class_subject_id: master_class_subject.id
    picked_master_course_schedules = all_schedules - master_course_schedules
    return if picked_master_course_schedules.blank?
    picked_master_course_schedules.each do |mcs|
      if mcs.date == date && mcs.slot == slot &&
        (mcs.master_class_subject.master_class_id == master_class_subject.master_class_id ||
        mcs.master_class_subject.room_id == master_class_subject.room_id)
        errors.add :master_course_schedule, I18n.t("errors.master_course_schedule_exists")
        break
      end
    end
  end
end
