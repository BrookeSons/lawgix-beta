class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  enum role: [:user, :lawgix, :admin]
  has_paper_trail

  belongs_to :company
  has_many :user_documents
  has_and_belongs_to_many :documents, through: :user_documents
  has_and_belongs_to_many :services, through: :services_users


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
