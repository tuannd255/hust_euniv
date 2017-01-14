class CreateMasterSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :master_sessions do |t|
      t.string :code
      t.string :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
