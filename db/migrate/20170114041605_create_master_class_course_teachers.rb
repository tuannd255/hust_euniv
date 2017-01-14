class CreateMasterClassCourseTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :master_class_course_teachers do |t|
      t.string :code
      t.string :class_code
      t.string :user_code
      t.string :master_session_code
      t.integer :credits
      t.string :room
      t.String :name

      t.timestamps
    end
  end
end
