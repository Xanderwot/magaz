class Ability
  include CanCan::Ability

  def initialize(user)

    @user = user
    send(@user.role) if @user
  end

  def admin
    can :manage, User
    can :manage, Category
    can :manage, Subcategory
    can :manage, Position

    #Admin panel ability
    can :access, :rails_admin
    can :dashboard
  end

  def user
    can :manage, User, :id => @user.id
  end
end