class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_NUMBER_REGEX = /\d[0-9]\)*\z/

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
  validates :phone_number, length: {minimum: Settings.user.phone_number.minlength,
    maximum: Settings.user.phone_number.maxlength}, format: {with: VALID_PHONE_NUMBER_REGEX},
    allow_blank: true

  enum status: [:activate, :block]

  scope :order_by_created_at, ->{order created_at: :desc}

  ransacker :status, formatter: proc {|v| statuses[v]}

  has_attached_file :avatar,
    styles: {
      medium: "250x250>",
      thumb: "100x100>"
    },
    default_url: "no_image.gif"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def password_required?
    new_record? ? super : false
  end
end
