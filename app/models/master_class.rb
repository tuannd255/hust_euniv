class MasterClass < ApplicationRecord
  has_many :master_class_subjects, dependent: :destroy

  validates :name, presence: true
  validates :code, presence: true
end
