class AddCodeToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :code, :string
  end
end
