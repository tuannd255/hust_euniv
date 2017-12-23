class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :master_class_subject

  scope :order_by_created_at, -> {order id: :desc}
  scope :unread, -> {where read: false}

  delegate :name, :code, :created_at, :master_course_id, to: :master_class_subject, prefix: true, allow_nil: true
end
