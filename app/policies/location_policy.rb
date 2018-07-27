class LocationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  def initialize(user,location)
    @user = user
    @location = location
  end
  def update?
    user.admin?(@location)
  end
end
