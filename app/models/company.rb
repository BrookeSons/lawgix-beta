class Company < ActiveRecord::Base
  has_many :employees
  has_many :services
  has_many :flows
end
