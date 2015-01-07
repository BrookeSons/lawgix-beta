class UserPolicy < ApplicationPolicy

  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  # def ogx_admin?
  #   self.ogx_admin?
  # end

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

end
