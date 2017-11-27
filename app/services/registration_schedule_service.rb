class RegistrationScheduleService
	attr_reader :args

  def initialize args
    @reg_type = args[:reg_type]
  	@id = args[:id]
  	@date = args[:date]
  	@slot = args[:slot]
    @room_id = args[:room_id]
    @master_class_subject_id = args[:master_class_subject_id]
    @master_class_ids = args[:master_class_ids]
  end

  def perform
    channels = Array.new
    channels << "room_#{@room_id}"
    @master_class_ids.each do |class_id|
      channels << "class_#{class_id}"
    end
    channels.each do |channel|
      ActionCable.server.broadcast channel, {reg_type: @reg_type, id: @id, date: @date, slot: @slot,
      master_class_subject_id: @master_class_subject_id}
    end
  end
end
