class MasterCourse < ApplicationRecord
  has_many :master_class_subjects, dependent: :destroy

  validates :code, presence: true, length: {maximum: Settings.master_course.code.maxlength},
    uniqueness: true
  validates :name, presence: true, length: {maximum: Settings.master_course.name.maxlength}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date

  enum status: [:init, :inprogress, :finished]

  scope :order_by_created_at, ->{order created_at: :desc}
  scope :id_desc, ->{order id: :desc}

  private
  def end_date_after_start_date
    if self.start_date && self.end_date && self.end_date < self.start_date
      errors.add :end_date, I18n.t("end_date_gt_start_date")
    end
  end
end
