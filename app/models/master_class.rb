class MasterClass < ApplicationRecord
  has_many :master_class_class_subjects, dependent: :destroy
  has_many :master_class_subjects, through: :master_class_class_subjects

  validates :name, presence: true, length: { maximum: Settings.master_class.name.maxlength }
  validates :code, presence: true, length: { maximum: Settings.master_class.code.maxlength },
    uniqueness: true

  scope :order_by_created_at, ->{order created_at: :desc}
end
