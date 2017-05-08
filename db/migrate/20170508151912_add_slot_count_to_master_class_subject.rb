class AddSlotCountToMasterClassSubject < ActiveRecord::Migration[5.0]
  def change
    add_column :master_class_subjects, :slot_count, :integer
    remove_column :master_course_schedules, :code
  end
end
