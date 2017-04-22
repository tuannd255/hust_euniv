class MasterCourse < ApplicationRecord
  has_many :master_class_subjects, dependent: :destroy

  validates :code, presence: true, length: {maximum: 10}, uniqueness: true
  validates :name, presence: true, length: {maximum: 70}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date

  def end_date_after_start_date
    if self.start_date && self.end_date && self.end_date < self.start_date
      errors.add :end_date, I18n.t("end_date_gt_start_date")
    end
  end
end
