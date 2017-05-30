class Supports::ClassSupport
  attr_reader :search, :master_classes

  def initialize args
    @search = args[:search]
    @master_classes = args[:master_classes]
  end
end
