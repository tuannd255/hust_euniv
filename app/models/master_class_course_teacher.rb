class MasterClassCourseTeacher < ApplicationRecord
  belongs_to :tbluser
  belongs_to :master_class
  belongs_to :master_session
end
