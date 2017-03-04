class Ability
  include CanCan::Ability

  def initialize user
    user ||= Tbluser.new
    can :manage, :all
  end
end
