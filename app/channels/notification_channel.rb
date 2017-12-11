class NotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notification_#{params[:email]}"
  end

  def unsubscribed
  end
end
