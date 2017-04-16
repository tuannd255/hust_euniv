namespace :db do
  desc "Fake subject"
  task fake_subject: [:environment] do
    20.times do ||
      MasterSubject.create code: Faker::Number.number(6), name: Faker::Lorem.sentence,
        creadit: rand(1..4)
    end
  end
end
