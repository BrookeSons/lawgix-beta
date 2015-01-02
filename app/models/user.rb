class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  enum role: [:user, :ogx_admin, :admin, :client, :lawyer]

  belongs_to :company
  has_and_belongs_to_many :services

  after_initialize :set_default_role, :if => :new_record?


  validate do |user|
    user.errors[:type] << "must be a valid subclass of User" unless User.descendants.collect(&:original_model_name).include?(user.type)
  end
  # Make sure our STI children are routed through the parent routes
  def self.inherited(child)
    child.instance_eval do
      alias :original_model_name :model_name

      def model_name
        User.model_name
      end
    end
    super
  end


  def set_default_role
    self.role ||= :user
  end



  def name
    [first_name, last_name].compact.join(' ')

    end
  end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
