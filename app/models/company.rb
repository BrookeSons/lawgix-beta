class Company < ActiveRecord::Base
  has_many :employees
  has_and_belongs_to_many :services, through: :companies_services
end
