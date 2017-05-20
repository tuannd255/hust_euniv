class MasterSubject < ApplicationRecord
  has_many :master_class_subjects, dependent: :destroy

  validates :code, presence: true, length: {maximum: Settings.master_subject.code.maxlength},
    uniqueness: true
  validates :name, presence: true, length: {maximum: Settings.master_subject.name.maxlength}
  validates_numericality_of :creadit, presence: true,
    greater_than_or_equal_to: Settings.master_subject.creadit.greater,
    less_than_or_equal_to: Settings.master_subject.creadit.less

  scope :order_by_created_at, ->{order created_at: :desc}
end
