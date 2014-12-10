class ServicePolicy < ApplicationPolicy

  attr_reader :user, :service

  def initialize(user, post)
    @user = user
    @service = service
  end

 def show?
   true
 end
end
