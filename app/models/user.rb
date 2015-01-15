class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  enum role: [:user, :lawgix, :admin]
  has_paper_trail

  belongs_to :company
  belongs_to :services
  has_many :services_requests

  after_initialize :set_default_role, :if => :new_record?



  def set_default_role
    self.role ||= :user
  end


  def name
    [first_name, last_name].compact.join(' ')

  end


devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable

end
