class Company < ActiveRecord::Base
  has_many :employees
  has_and_belongs_to_many :services, through: :services_users
  has_many :flows
end
