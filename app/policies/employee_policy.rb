class EmployeePolicy < ApplicationPolicy

  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def lawgix?
    current_user.lawgix?
  end

  def employee?
    current_user.employee?
  end

  def index?
    @current_user.employee? or @current_user.lawgix?
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
  end

end
