class AddPickStatusToMasterClassSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :master_class_subjects, :status
    add_column :master_class_subjects, :status, :integer, default: 0
  end
end
