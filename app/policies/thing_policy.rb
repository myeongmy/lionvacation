class ThingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  def initialize(user,thing)
    @user = user
    @thing = thing
  end
  def update?
    user.admin?(@thing)
  end  
end
