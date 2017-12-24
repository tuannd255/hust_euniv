class Position < ApplicationRecord
  has_many :users

  validates :name, presence: true, length: {maximum: 20}
  validates :full_name, presence: true, length: {maximum: 50}

  after_destroy :update_user_position

  scope :id_desc, -> {order id: :desc}

  private

  def update_user_position
    users.update_all position_id: nil
  end
end
