class ServicePolicy < ApplicationPolicy

  attr_reader :user, :model

  def initialize(user, model)
    @user = user
    @service = model
  end

  def index?
    @current_user.lawgix?
  end

  def new?
    @current_user.lawgix?
  end

  def show?
    @current_user.lawgix? or @current_user == @user
  end

  def update?
    @current_user.lawgix? or @current_user == @user
  end

  def destroy?
    return false if @current_user == @user
    @current_user.lawgix?
    true
  end
 def show?
   true
 end
end
