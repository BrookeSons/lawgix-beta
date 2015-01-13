class Company < ActiveRecord::Base
  has_many :users
  has_many :Employees
  has_many :services
  has_many :flows
end
