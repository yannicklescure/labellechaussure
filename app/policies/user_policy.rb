class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def information?
    true
  end

  def edit?
    # user_is_owner? || user.admin
    # user_is_owner?
    true
  end

  def update?
    # user_is_owner? || user.admin
    user_is_owner?
  end

  private

  def user_is_owner?
    # record.user == user
    record == user
    # raise
  end
end
