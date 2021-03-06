class Supports::User
  attr_reader :search, :user, :users

  def initialize args
    @search = args[:search]
    @user = args[:user]
    @users = args[:users]
  end

  def collection_user_status
    @collection_user_status ||= User.statuses.collect {|k, v| [I18n.t(".#{k}"), k]}
  end

  def collection_position
    @collection_position ||= Position.all.collect {|p| [p.name, p.id]}
  end
end
