class CreateNotificationService
  attr_reader :args

  def initialize args
    @user = User.find_by id: args[:user_id]
    @master_class_subject_id = args[:master_class_subject_id]
  end

  def perform
    notification = Notification.create! user_id: @user.id, master_class_subject_id: @master_class_subject_id
    if notification
      @user.update_attributes unread_notification: @user.unread_notification + 1
      ActionCable.server.broadcast "notification_#{@user.email}", {unread_notification: @user.unread_notification}
    end
  end
end
