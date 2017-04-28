namespace :db do
  desc "Fake room"
  task fake_room: [:environment] do
    Room.create name: "TC-201"
    Room.create name: "TC-202"
    Room.create name: "TC-203"
    Room.create name: "TC-204"
    Room.create name: "TC-205"
    Room.create name: "TC-206"
    Room.create name: "TC-207"
    Room.create name: "TC-208"
    Room.create name: "TC-209"
    Room.create name: "TC-210"
    Room.create name: "TC-301"
    Room.create name: "TC-302"
    Room.create name: "TC-303"
    Room.create name: "TC-304"
    Room.create name: "TC-305"
    Room.create name: "TC-306"
    Room.create name: "TC-307"
    Room.create name: "TC-308"
  end
end
