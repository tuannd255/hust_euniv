namespace :db do
  desc "Fake class"
  task fake_class: [:environment] do
    MasterClass.create code: Faker::Number.number(6), name: "TTM"
    MasterClass.create code: Faker::Number.number(6), name: "HTTT"
    MasterClass.create code: Faker::Number.number(6), name: "CNTT"
    MasterClass.create code: Faker::Number.number(6), name: "Viet Nhat A"
    MasterClass.create code: Faker::Number.number(6), name: "Viet Nhat B"
    MasterClass.create code: Faker::Number.number(6), name: "Viet Nhat C"
    MasterClass.create code: Faker::Number.number(6), name: "TDH"
    MasterClass.create code: Faker::Number.number(6), name: "CN-Dien"
  end
end
