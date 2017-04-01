namespace :db do
  desc "Fake class subject"
  task fake_class_subject: [:environment] do
    master_subjects = MasterSubject.all
    master_classes = MasterClass.all
    master_courses = MasterCourse.all
    master_courses.each do |master_course|
      20.times do ||
        master_subject = master_subjects.order("rand()").first
        master_class = master_classes.order("rand()").first
        MasterClassSubject.create name: Faker::Lorem.sentence,
          master_subject_id: master_subject.id,
          master_class_id: master_class.id,
          master_course_id: master_course.id
      end
    end
  end
end
