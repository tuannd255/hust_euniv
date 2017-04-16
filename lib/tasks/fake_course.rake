namespace :db do
  desc "Fake course"
  task fake_course: [:environment] do
    20.times do |n|
      year = 2010 + n
      start_date = Faker::Date.between(10.year.ago, 10.year.from_now)
      end_date = start_date + 180.day
      MasterCourse.create code: Faker::Number.number(6), name: year,
        start_date: start_date, end_date: end_date
    end
  end
end
