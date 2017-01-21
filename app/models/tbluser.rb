class Tbluser < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :trackable, :validatable, :encryptable

  has_many :master_course_teachers, dependent: :destroy

  before_validation(on: :create) do
    self.User_ID = Tbluser.all.collect { |tbluser| tbluser.User_ID }.max + 1
  end

  def password_salt
    "no salt"
  end

  def password_salt= new_salt
  end
end
