class CreateMasterClassSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :master_class_subjects do |t|
      t.string :code
      t.string :master_class_code
      t.string :master_subject_code
      t.string :master_course_code

      t.timestamps
    end
  end
end
