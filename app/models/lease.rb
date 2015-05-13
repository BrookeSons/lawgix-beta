class Lease < ActiveRecord::Base

  has_many :services
  has_many :flows
  has_many :parcels
  has_many :documents
  has_many :contacts
  has_many :lessors
  has_many :lease_provisons

  belongs_to :project

  accepts_nested_attributes_for :lessors
  accepts_nested_attributes_for :parcels
  accepts_nested_attributes_for :documents
  accepts_nested_attributes_for :lease_provisons

end
