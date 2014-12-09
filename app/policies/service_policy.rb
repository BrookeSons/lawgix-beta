class ServicePolicy

  attr_reader :user, :service

  def initialize(user, post)
    @user = user
    @service = service
  end

 def view?
   user.ogx_admin?
 end
end
