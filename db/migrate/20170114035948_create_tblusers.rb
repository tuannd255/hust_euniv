class CreateTblusers < ActiveRecord::Migration[5.0]
  def change
    create_table :tblusers, id: false do |t|
      t.integer :User_ID
      t.string :username
      t.string :salt
      t.boolean :enabled
      t.string :user_code
      t.string :avatar
      t.string :Password
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
