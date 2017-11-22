namespace :db do
  desc "Fake class subject"
  task fake_class_subject: [:environment] do
    master_subjects = MasterSubject.all
    master_classes = MasterClass.all
    master_courses = []
    master_courses << MasterCourse.find_by(name: "20171")
    MasterCourse.where.not(name: "20171").each do |mc|
      master_courses << mc
    end
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

    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[0].id,
      user_id: users[0].id
    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[1].id,
      name: master_subjects[1].name,
      room_id: rooms[0].id,
      user_id: users[0].id
    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[2].id,
      name: master_subjects[2].name,
      room_id: rooms[1].id,
      user_id: users[0].id
    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[3].id,
      name: master_subjects[3].name,
      room_id: rooms[0].id,
      user_id: users[1].id
    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[0].id,
      master_subject_id: master_subjects[4].id,
      name: master_subjects[4].name,
      room_id: rooms[2].id,
      user_id: users[1].id
    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[1].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[0].id,
      user_id: users[0].id
    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[2].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[0].id,
      user_id: users[2].id
    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[3].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[1].id,
      user_id: users[3].id
    MasterClassSubject.create! master_course_id: master_courses[3].id,
      master_class_id: master_classes[4].id,
      master_subject_id: master_subjects[0].id,
      name: master_subjects[0].name,
      room_id: rooms[2].id,
      user_id: users[0].id
  end
end
