# require "rake"

namespace :db do
  desc "Fake user"
  task fake_user: :environment do
    User.create! email: "admin@gmail.com", username: "admin@gmail.com", name: "admin",
      password: "123456", password_confirmation: "123456", is_admin: true

    20.times do |n|
      User.create! email: "user#{n}@gmail.com", username: "user#{n}@gmail.com", name: "user#{n}",
        password: "123456", password_confirmation: "123456", is_admin: false
    end

  end
end
