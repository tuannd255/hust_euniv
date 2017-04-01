namespace :db do
  desc "Fake class"
  task fake_class: [:environment] do
    20.times do ||
      MasterClass.create code: Faker::Number.number(6), name: Faker::Lorem.sentence
    end
  end
end
