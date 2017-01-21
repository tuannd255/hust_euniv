require "rake"

namespace :db do
  desc "set data"
  task set_data: :environment do

    # puts "set email"
    # Tblusers.all.each do |user|
    #   user.update_attributes email: user.Email if user.Email
    # end

    puts "set password"
    Tbluser.all.each do |user|
      user.update_attributes encrypted_password: user.Password if user.Password
    end
  end
end
