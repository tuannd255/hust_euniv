class MasterClass < ApplicationRecord
  has_many :master_class_subjects, dependent: :destroy

  validates :name, presence: true, length: {maximum: 70}
  validates :code, presence: true, length: {maximum: 10}, uniqueness: true
end
