class Lease < ActiveRecord::Base

  belongs_to :service
  has_many :contacts
  has_many :flows

end
