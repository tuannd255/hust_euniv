class Supports::SubjectSupport
  attr_reader :search, :master_subjects

  def initialize args
    @search = args[:search]
    @master_subjects = args[:master_subjects]
  end
end
