namespace :db do
  desc "Fake data"
  task :fake_data do
    puts "**********Fake class**********"
    Rake::Task["db:fake_class"].invoke
    puts "**********Fake subject**********"
    Rake::Task["db:fake_subject"].invoke
    puts "**********Fake course**********"
    Rake::Task["db:fake_course"].invoke
    # puts "**********Fake class subject**********"
    # Rake::Task["db:fake_class_subject"].invoke
  end
end
