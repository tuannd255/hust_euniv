class MasterCourseSchedule < ApplicationRecord
  belongs_to :master_class_subject

  enum slot: [:morning, :afternoon, :evening]
end
