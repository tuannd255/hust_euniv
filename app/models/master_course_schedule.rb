class MasterCourseSchedule < ApplicationRecord
  belongs_to :master_class_subject

  validates :date, :slot, :master_class_subject_id, presence: true

  after_create :update_class_subject_status

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
    if master_class_subject_status == "inprogess" &&
      master_class_subject_slot_count == master_class_subject.slot_pick_count
      master_class_subject.update_attributes status: :finished
    elsif master_class_subject_status == "finished" &&
      master_class_subject_slot_count < master_class_subject.slot_pick_count
      master_class_subject.update_attributes status: :inprogess
    end
  end
end
