class NotificationsController < ApplicationController

  def index
    all_noti = current_user.notifications
    unread_noti = all_noti.unread
    @notifications = if(params[:all] && params[:all] == "1")
      all_noti
    else
      unread_noti
    end.order_by_created_at.page(params[:page]).per 25
    @unread_count = unread_noti.size
  end

  def show
    noti = find_noti
    if noti
      if !noti.read
        noti.update_attributes(read: true)
        current_user.update_attributes(unread_notification: current_user.unread_notification - 1) if current_user.unread_notification >= 1
      end
      redirect_to master_course_url(noti.master_class_subject_master_course_id)
    else
      redirect_to root_path
    end
  end

  private
  def find_noti
    current_user.notifications.find_by id: params[:id]
  end
end
