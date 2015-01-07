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
    true
     # @current_user.admin? or @current_user.ogx_admin?
  end

  def new?
    true
    # @current_user.ogx_admin? or  @current_user.admin?
  end

  def show?
    true
     # @current_user.admin? or @current_user == @user or current_user.ogx_admin?
  end

  def update?
     @current_user.lawgix? or @current_user.admin?
  end

  def destroy?
    return false if @current_user == @user
    # @current_user.ogx_admin? or @current_user.admin?
    true
  end

end
