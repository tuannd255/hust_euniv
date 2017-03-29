class MasterSubject < ApplicationRecord
  validates :code, presence:true
  validates :name, presence:true
  validates :creadit, presence:true
end
