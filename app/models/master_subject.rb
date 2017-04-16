class MasterSubject < ApplicationRecord
  has_many :master_class_subjects, dependent: :destroy

  validates :code, presence:true
  validates :name, presence:true
  validates :creadit, presence:true
end
