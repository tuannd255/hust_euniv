require "rake"

namespace :db do
  desc "set data"
  task set_data: :environment do

    # puts "set email"
    # Tblusers.all.each do |user|
    #   user.update_attributes email: user.Email if user.Email
    # end
    user = Tbluser.last
    Tbluser.create! email: "admin@gmail.com", username: "admin@gmail.com", User_ID: user.User_ID + 1, password: "123456", password_confirmation: "123456", is_admin: true
    puts "set password"
    Tbluser.all.each do |user|
      user.update_attributes encrypted_password: user.Password if user.Password
    end
  end
end
