class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :master_class_subject_teacher_code
      t.integer :master_class_subject_teacher_id

      t.timestamps
    end
  end
end
