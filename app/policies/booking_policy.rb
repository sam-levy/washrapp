class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(client: user) ||
      scope.where(washer: user)
    end
  end

  def show?
    booking_client? || booking_washer?
  end

  def create?
  end

  def update?
    booking_client? || booking_washer?
  end

  def destroy?
    booking_owner?
  end

  private

  def booking_client?
    record.client == user
  end

  def booking_washer?
    record.washer == user
  end
end
