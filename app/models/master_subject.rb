class MasterSubject < ApplicationRecord
  has_many :master_class_subjects, dependent: :destroy

  validates :code, presence: true, length: {maximum: 10}, uniqueness: true
  validates :name, presence: true, length: {maximum: 70}
  validates_numericality_of :creadit, presence: true, greater_than_or_equal_to: 1,
    less_than_or_equal_to: 10
end
