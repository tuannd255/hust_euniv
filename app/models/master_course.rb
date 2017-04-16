class MasterCourse < ApplicationRecord
  has_many :master_class_subjects, dependent: :destroy

  validates :code, presence: true, length: {maximum: 10}
  validates :name, presence: true, length: {maximum: 70}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date?

  def end_date_after_start_date?
    if start_date.nil? || end_date.nil? || end_date < start_date
      errors.add :end_date, I18n.t("end_date_gt_start_date")
    end
  end
end
