class Project < ActiveRecord::Base
  has_many :leases
  has_many :services
  belongs_to :project_chunk, polymorphic: true

  has_paper_trail

end
