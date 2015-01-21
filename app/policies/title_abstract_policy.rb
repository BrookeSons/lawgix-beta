class TitleAbstractPolicy < ApplicationPolicy

  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def lawgix?
    true
    # current_user.lawgix?
  end


  def index?
    true
    # @current_user.employee? or @current_user.lawgix?
  end

  def new?
    true
    # @current_user.lawgix?
  end

  def show?
    true
    # @current_user.lawgix? or @current_user == @user
  end

  def update?
    true
    # @current_user.lawgix? or @current_user == @user
  end

  def destroy?
    true
    # return false if @current_user == @user
    # @current_user.lawgix?
  end

end
