class AddStatusToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :master_courses, :status, :integer, default: 0
  end
end
