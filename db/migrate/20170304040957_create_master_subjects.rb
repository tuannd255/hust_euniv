class CreateMasterSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :master_subjects do |t|
      t.string :code
      t.integer :creadit
      t.string :name

      t.timestamps
    end
  end
end
