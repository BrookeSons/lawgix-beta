class UserPolicy < ApplicationPolicy

  # attr_reader :current_user, :model
  #
  # def initialize(current_user, model)
  #   @current_user = current_user
  #   @user = model
  # end


  def index?
    true
  end

  def new?
     true
  end

  def show?
     true
  end

  def update?
     true
  end

  def destroy?
    return false if @current_user == @user
    @current_user.lawgix?
    true
  end

end
