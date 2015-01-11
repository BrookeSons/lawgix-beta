class Lease < ActiveRecord::Base

  belongs_to :service
  has_many :flows

 attr_accessor :lease_number, :lessee_last_name

end
