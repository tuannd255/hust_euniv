class CreateTblusers < ActiveRecord::Migration[5.0]
  def change
    create_table :tblusers, id: false do |t|
      t.integer :user_id
      t.string :username
      t.string :salt
      t.boolean :enabled
      t.string :user_code
      t.string :avatar
      t.string :Password

      t.timestamps
    end
  end
end
