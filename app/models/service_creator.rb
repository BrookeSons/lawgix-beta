class ServiceCreator

  attr_accessor :lease_number, :last_name, :state, :county, :description, :requested_delivery,  :service

  def initialize(lease_number: "", state: "", county: "", last_name: "", description: "", requested_delivery: "")
    @state = state
    @last_name = last_name
    @county = county
    @lease_number = lease_number
    @requested_delivery = requested_delivery
    @description = description
  end


  def build
    self.service = Service.new(lease_number: lease_number, state: state,  county: county, 
                        description: description, requested_delivery: requested_delivery)
    service
  end

  def create
    build
    service.save
  end

   def lessee_to_lessees
     lessees.each do |lessee|
       Lessee.new(last_name: last_name)
     end
   end
 
  def checkbox_to_flows
    flow_string.split('\n').map do |flow_string|
      Flow.new(flow_type: flow_string)
    end
  end

end
