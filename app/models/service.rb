class Service < ActiveRecord::Base

 has_many :flows
 has_many :contacts
 has_many :leases
 belongs_to :user

 def incomplete_flows
   flows.reject(&:complete?)
 end

  def done?
    incomplete_flows.empty?
  end


end
