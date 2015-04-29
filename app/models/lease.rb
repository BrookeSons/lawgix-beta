class Lease < ActiveRecord::Base

  has_many :services
  has_many :flows
  has_many :lessees
  has_many :parcels
  has_many :documents

  belongs_to :project


  accepts_nested_attributes_for :lessees
  accepts_nested_attributes_for :parcels
  accepts_nested_attributes_for :documents

end
