class Service < ActiveRecord::Base

 has_many :flows
 has_many :lessees
 has_many :leases
 has_many :parcels
 belongs_to :user

 accepts_nested_attributes_for :lessees
 accepts_nested_attributes_for :flows
 accepts_nested_attributes_for :leases
 accepts_nested_attributes_for :parcels
 
end
