class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def accepted?
    record.boat.user == user
  end

  def denied?
    record.boat.user == user
  end

end
