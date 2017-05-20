class Supports::MasterCourseSchedule
  attr_reader :master_course, :search, :master_class_subjects

  def initialize args
    @master_course = args[:master_course]
    @search = args[:search]
    @master_class_subjects = args[:master_class_subjects]
  end

  def collection_subject_select
    @collection_subject_select = master_class_subjects.collect {|k| [k.code + "-" + k.name, k.id]}
  end

  def collection_class_select
    @collection_class_select = master_class_subjects.map(&:master_class).uniq.
      collect {|k| [k.code + "-" + k.name, k.id]}
  end
end
