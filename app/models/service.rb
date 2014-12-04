class Service < ActiveRecord::Base

 has_many :flows



 def incomplete_flows
   flows.reject(&:complete?)
 end


  def done?
    incomplete_flows.empty?
  end
end