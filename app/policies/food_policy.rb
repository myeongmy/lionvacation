class FoodPolicy < ApplicationPolicy
  
  class Scope < Scope
    def resolve
      scope
    end
  end  
  def initialize(user,food)
    @user = user
    @food = food
  end
  def update?
    user.admin?(@food)
  end

end
