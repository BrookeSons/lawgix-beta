class Service < ActiveRecord::Base

 has_many :flows
 has_many :contacts
 has_many :leases
 belongs_to :user

 def incomplete_flows
   flows.reject(&:complete?)
 end

 def create
   @action = ServiceCreator.new(
     lease_number: params[:service][:lease_number],
     state: params[:service][:state],
     county: params[:service][:county])
   @action.create
   redirect_to_services_path
 end 


  def done?
    incomplete_flows.empty?
  end


end
