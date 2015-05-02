class Project < ActiveRecord::Base
  has_many :leases
  has_many :services
  has_many :parcels
  has_many :contacts
  has_many :lessors
  has_many :title_abstracts

  has_paper_trail

end
