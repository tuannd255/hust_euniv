class CreateMasterClassSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :master_class_subjects do |t|
      t.string :code
      t.string :name
      t.boolean :status
      t.integer :tbluser
      t.integer :room
      t.integer :master_class_id
      t.integer :master_subject_id
      t.integer :master_course_id

      t.timestamps
    end
  end
end
