class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.primary_key :User_ID
      t.string :Username
      t.string :Salt
      t.string :Email
      t.boolean :Enabled
      t.string :User_Code
      t.string :avatar

      t.timestamps
    end
  end
end
