class Employee < User

  belongs_to :company
  has_many :services, through: :services_users

end