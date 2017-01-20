class CreateTblusers < ActiveRecord::Migration[5.0]
  def change
    create_table :tblusers, id: false do |t|
      t.integer :User_ID
      t.string :Username
      t.string :Salt
      t.string :Email
      t.boolean :Enabled
      t.string :User_Code
      t.string :Avatar
      t.string :Password

      t.timestamps
    end
  end
end
