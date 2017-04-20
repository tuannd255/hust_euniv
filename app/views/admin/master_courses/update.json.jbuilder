json.master_course do
  json.id @master_course.id
  json.name @master_course.name
  json.code @master_course.code
  json.start_date l @master_course.start_date
  json.end_date l @master_course.end_date
end
