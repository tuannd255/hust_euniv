class CreateMasterCourseSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :master_course_schedules do |t|
      t.string :code
      t.datetime :date
      t.integer :slot

      t.timestamps
    end
  end
end
