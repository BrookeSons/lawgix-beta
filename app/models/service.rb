class Service < ActiveRecord::Base

 has_many :flows
 has_many :lessees
 has_many :leases
 belongs_to :user

 accepts_nested_attributes_for :flows, :lessees, :leases

 def incomplete_flows
   flows.reject(&:complete?)
 end

  def done?
    incomplete_flows.empty?
  end


end
