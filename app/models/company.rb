class Company < ActiveRecord::Base
  has_many :users
  has_many :service_requests
  has_many :flows
end
