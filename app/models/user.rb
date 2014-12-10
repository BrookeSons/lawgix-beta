class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  enum role: [ :user, :ogx_admin, :admin ]

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  devise :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

end
