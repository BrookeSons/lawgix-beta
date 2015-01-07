class ClientPolicy < ApplicationPolicy

  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def lawgix?
    self.lawgix?
  end

  def index?
    @current_user.admin? or @current_user.lawgix?
  end

  def new?
    @current_user.lawgix?
  end

  def show?
    @current_user.admin? or @current_user == @user or current_user.lawgix?
  end

  def update?
    @current_user.lawgix?
  end

  def destroy?
    return false if @current_user == @user
    @current_user.lawgix?
  end

end
