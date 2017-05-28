class AddSendmailStatusToMasterCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :master_courses, :mail_sended, :boolean, default: false
  end
end
