class Supports::RoomSupport
  attr_reader :search, :rooms

  def initialize args
    @search = args[:search]
    @rooms = args[:rooms]
  end
end
