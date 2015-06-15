class Servicer < Company
  has_many :employees
  has_many :projects
  has_and_belongs_to_many :services, through: :services_users
  has_and_belongs_to_many :services, through: :companies_services
end
