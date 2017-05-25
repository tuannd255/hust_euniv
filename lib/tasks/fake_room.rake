namespace :db do
  desc "Fake room"
  task fake_room: [:environment] do
    Room.create name: "TC-201", code: Faker::Number.number(6)
    Room.create name: "TC-202", code: Faker::Number.number(6)
    Room.create name: "TC-203", code: Faker::Number.number(6)
    Room.create name: "TC-204", code: Faker::Number.number(6)
    Room.create name: "TC-205", code: Faker::Number.number(6)
    Room.create name: "TC-206", code: Faker::Number.number(6)
    Room.create name: "TC-207", code: Faker::Number.number(6)
    Room.create name: "TC-208", code: Faker::Number.number(6)
    Room.create name: "TC-209", code: Faker::Number.number(6)
    Room.create name: "TC-210", code: Faker::Number.number(6)
    Room.create name: "TC-301", code: Faker::Number.number(6)
    Room.create name: "TC-302", code: Faker::Number.number(6)
    Room.create name: "TC-303", code: Faker::Number.number(6)
    Room.create name: "TC-304", code: Faker::Number.number(6)
    Room.create name: "TC-305", code: Faker::Number.number(6)
    Room.create name: "TC-306", code: Faker::Number.number(6)
    Room.create name: "TC-307", code: Faker::Number.number(6)
    Room.create name: "TC-308", code: Faker::Number.number(6)
  end
end
