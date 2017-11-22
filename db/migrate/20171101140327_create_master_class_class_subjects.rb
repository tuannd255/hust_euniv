class CreateMasterClassClassSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :master_class_class_subjects do |t|
      t.integer :master_class_id
      t.integer :master_class_subject_id

      t.timestamps
    end
  end
end
