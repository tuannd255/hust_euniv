namespace :db do
  desc "Fake class subject"
  task fake_class_subject: [:environment] do
    master_subjects = MasterSubject.all
    master_classes = MasterClass.all
    master_courses = MasterCourse.all
    rooms = Room.all
    users = User.where is_admin: false

    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[0].id,
      user_id: users[0].id
    # cac case sau:
    # cl km cp ct
    # cl km kp ct
    # cl km cp kt
    # cl km kp kt
    # kl cm cp ct
    # kl cm cp kt
    # kl cm kp ct
    # kl cm kp kt
    # voi: k: khac, c: cung, l: lop, m: mon, p: phong, t:thay
    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[1].id,
      name: master_subjects[1].name,
      room_id: rooms[0].id,
      user_id: users[0].id
    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[2].id,
      name: master_subjects[2].name,
      room_id: rooms[1].id,
      user_id: users[0].id
    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[3].id,
      name: master_subjects[3].name,
      room_id: rooms[0].id,
      user_id: users[1].id
    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[4].id,
      name: master_subjects[4].name,
      room_id: rooms[2].id,
      user_id: users[1].id
    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[1].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[0].id,
      user_id: users[0].id
    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[2].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[0].id,
      user_id: users[2].id
    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[3].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[1].id,
      user_id: users[3].id
    MasterClassSubject.create! master_course_id: master_courses[0].id,
      master_class_id: master_classes[4].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[2].id,
      user_id: users[0].id



    # master_courses.each do |master_course|
    #   50.times do ||
    #     master_subject = master_subjects.order("rand()").first
    #     master_class = master_classes.order("rand()").first
    #     user = users.order("rand()").first
    #     room = rooms.order("rand()").first
    #     MasterClassSubject.create! name: master_subject.name,
    #       master_subject_id: master_subject.id,
    #       master_class_id: master_class.id,
    #       master_course_id: master_course.id,
    #       room_id: room.id,
    #       user_id: user.id
    #   end
    # end
  end
end
