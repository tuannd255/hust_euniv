class Supports::MasterClassSubject
  attr_reader :master_course, :search, :master_class_subject,
    :master_class_subjects

  def initialize args
    @master_course = args[:master_course]
    @search = args[:search]
    @master_class_subject = args[:master_class_subject]
    @master_class_subjects = args[:master_class_subjects]
  end

  def collection_subject_select
    @collection_subject_select = MasterSubject.all.collect {|k| [k.code + "-" + k.name, k.id]}
  end

  def collection_class_select
    @collection_class_select = MasterClass.all.collect {|k| [k.code + "-" + k.name, k.id]}
  end

  def collection_user_select
    @collection_user_select = User.where(is_admin: false).collect {|k, v| [k.name + " - " + k.email, k.id]}
  end

  def collection_room_select
    @collection_room_select = Room.all.collect {|k, v| [k.name, k.id]}
  end

  def collection_status_select
    @collection_status_select = MasterClassSubject.statuses.collect {|k, v| [I18n.t(".#{k}"), v]}
  end
end
