class Supports::PositionSupport
  attr_reader :search, :positions

  def initialize args
    @search = args[:search]
    @positions = args[:positions]
  end
end
