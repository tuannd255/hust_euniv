class Supports::CourseSupport
  attr_reader :search, :master_courses

  def initialize args
    @search = args[:search]
    @master_courses = args[:master_courses]
  end
end
