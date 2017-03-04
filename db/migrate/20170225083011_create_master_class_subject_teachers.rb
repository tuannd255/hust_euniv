class CreateMasterClassSubjectTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :master_class_subject_teachers do |t|
      t.string :code
      t.string :tbluser_user_code

      t.timestamps
    end
  end
end
