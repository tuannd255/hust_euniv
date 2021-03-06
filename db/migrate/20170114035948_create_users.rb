class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.integer :status, default: 0
      t.string :avatar
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
