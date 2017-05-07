class Supports::MasterClassSubject
  attr_reader :master_course, :search, :master_class_subject,
    :master_class_subjects

  def initialize args
    @master_course = args[:master_course]
    @search = args[:search]
    @master_class_subject = args[:master_class_subject]
    @master_class_subjects = args[:master_class_subjects]
  end

  def select_subject
    @select_subject = MasterSubject.all.collect {|k| [k.code + "-" + k.name, k.id]}
  end

  def select_class
    @select_class = MasterClass.all.collect {|k| [k.code + "-" + k.name, k.id]}
  end

  def select_user
    @select_user = User.where(is_admin: false).collect {|k, v| [k.name + "-" + k.email, k.id]}
  end

  def select_room
    @select_room = Room.all.collect {|k, v| [k.name, k.id]}
  end
end
