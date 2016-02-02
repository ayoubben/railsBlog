class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_user?
      can :manage, :all
    elsif user.simple_user?
      can :create, Comment
      can :read, :all
    else
      can :read, :all
    end
  end
end
