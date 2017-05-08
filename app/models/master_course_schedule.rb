class MasterCourseSchedule < ApplicationRecord
  belongs_to :master_class_subject

  validates :date, :slot, :master_class_subject_id, presence: true

  enum slot: [:morning, :afternoon, :evening]

  scope :by_user_subject, -> user_id, master_subject_id do
    joins(:master_class_subject).where "master_class_subjects.user_id = ? &&
      master_class_subjects.master_subject_id = ?",
      user_id, master_subject_id
  end

  scope :by_other_user, -> id do
    joins(:master_class_subject).where "master_class_subjects.user_id != ?", id
  end

  delegate :user_id, to: :master_class_subject, prefix: true
end
