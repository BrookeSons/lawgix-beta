class Service < ActiveRecord::Base

 has_many :flows
 has_many :lessees
 has_man :leases
 has_many :parcels
 has_and_belongs_to_many :users
 belongs_to :company
  

 accepts_nested_attributes_for :lessees
 accepts_nested_attributes_for :flows
 accepts_nested_attributes_for :leases
 accepts_nested_attributes_for :parcels
 
end
