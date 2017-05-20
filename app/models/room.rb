class Room < ApplicationRecord
  has_many :master_class_subjects

  validates :name, length: { minimum: Settings.room.name.minlength,
    maximum: Settings.room.name.maxlength }
  validates :code, length: { minimum: Settings.room.code.minlength,
    maximum: Settings.room.code.maxlength }

  scope :order_by_created_at, ->{order created_at: :desc}
end
