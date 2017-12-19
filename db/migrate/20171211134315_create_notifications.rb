class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.boolean :read, default: false
      t.integer :user_id
      t.integer :master_class_subject_id

      t.timestamps
    end
  end
end
