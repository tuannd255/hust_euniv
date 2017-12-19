class AddUnreadNotificationToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :unread_notification, :integer, default: 0
  end
end
