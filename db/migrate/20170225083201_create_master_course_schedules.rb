class CreateMasterCourseSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :master_course_schedules do |t|
      t.datetime :date
      t.integer :slot
      t.integer :master_class_subject_id

      t.timestamps
    end
  end
end
