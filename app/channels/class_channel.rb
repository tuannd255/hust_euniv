class ClassChannel < ApplicationCable::Channel
  def subscribed
    stream_from "class_#{params[:class_id]}"
  end

  def unsubscribed
  end
end
