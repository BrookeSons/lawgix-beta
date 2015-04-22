class Project < ActiveRecord::Base
  has_many :leases
  has_many :services

  has_paper_trail

end
