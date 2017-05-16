class CreateMasterCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :master_courses do |t|
      t.string :code
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
