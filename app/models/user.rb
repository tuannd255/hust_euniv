class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :trackable, :validatable
  has_many :master_class_subjects

  validates :name, length: { minimum: Settings.user.name.minlength,
    maximum: Settings.user.name.maxlength }
  validates :email, presence: true, length: { maximum: Settings.user.email.maxlength },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: Settings.user.password.minlength,
    maximum: Settings.user.password.maxlength }, allow_blank: true

  enum status: [:activate, :block]

  scope :order_by_created_at, ->{order created_at: :desc}

  ransacker :status, formatter: proc {|v| statuses[v]}

  def password_required?
    new_record? ? super : false
  end
end
