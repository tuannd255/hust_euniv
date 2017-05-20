class MasterClassSubject < ApplicationRecord
  belongs_to :master_class
  belongs_to :master_subject
  belongs_to :master_course
  belongs_to :user
  belongs_to :room
  has_many :master_course_schedules, dependent: :destroy

  validates :name, presence: true, length: {minimum: 3, maximum: 70}
  validates :master_course_id, :master_subject_id, :master_class_id, :user_id,
    :room_id, presence: true

  before_save :add_code, :add_slot_count

  enum status: [:inprogress, :finished, :cancelled]

  scope :picked_master_class_subject, ->master_class_id, room_id, user_id, master_course_id do
    where "(master_class_id = ? OR room_id = ? OR user_id = ?) AND master_course_id = ?",
      master_class_id, room_id, user_id, master_course_id
  end

  scope :by_user, ->user { where user: user }
  scope :by_user_course, ->user, master_course { where user: user, master_course: master_course }

  delegate :name, :code, :creadit, to: :master_subject, prefix: true, allow_nil: true
  delegate :name, :code, to: :master_class, prefix: true, allow_nil: true
  delegate :name, :code, :start_date, :end_date, to: :master_course, prefix: true, allow_nil: true
  delegate :name, to: :user, prefix: true, allow_nil: true
  delegate :name, to: :room, prefix: true, allow_nil: true
  delegate :start_date, :end_date, to: :master_course, prefix: true, allow_nil: true

  def slot_pick_count
    master_course_schedules.count
  end

  private
  def add_code
    if master_course && master_subject && master_class
      self.code = master_course.code + "-" + master_subject.code + "-" + master_class.code
    end
  end

  def add_slot_count
    self.slot_count = case self.master_subject_creadit
    when 1
      5
    when 2
      8
    when 3
      12
    when 4
      16
    end
  end

  def master_course_exist
    if master_course.nil?
      errors.add :master_course_id, :blank, message: I18n.t(".cant_be_blank")
    end
  end

  def master_subject_exist
    if master_subject.nil?
      errors.add :master_subject_id, :blank, message: I18n.t(".cant_be_blank")
    end
  end

  def master_class_exist
    if master_class.nil?
      errors.add :master_class_id, :blank, message: I18n.t(".cant_be_blank")
    end
  end

  def user_exist
    if user.nil?
      errors.add :user_id, :blank, message: I18n.t(".cant_be_blank")
    end
  end

  def room_exist
    if room.nil?
      errors.add :room_id, :blank, message: I18n.t(".cant_be_blank")
    end
  end
end
