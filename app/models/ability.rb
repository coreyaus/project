class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    #can :manage, User, id: user.id
    can [:read, :update], User, id: user.id
    #can :read, User

		can :create, Order
		can :read, Order, user_id: user.id

		can :destroy, Comment, admin: true
    can [:read, :create], Comment

  end

end
