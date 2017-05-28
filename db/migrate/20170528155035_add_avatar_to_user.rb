class AddAvatarToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :avatar
    add_attachment :users, :avatar
    add_column :users, :phone_number, :string
    add_column :users, :workplace, :string
    add_column :users, :story, :text
  end
end
