class MasterClassSubject < ApplicationRecord
  belongs_to :master_class
  belongs_to :master_subject
  belongs_to :master_course

  validates :name, presence: true, length: {maximum: 70}
  validates :master_course_id, presence: true
  validates :master_subject_id, presence: true
  validates :master_class_id, presence: true

  before_save :add_code

  private
  def add_code
    self.code = master_course.code + "-" + master_subject.code + "-" +master_class.code
  end
end
