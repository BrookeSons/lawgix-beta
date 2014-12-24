class ServiceCreator

  attr_accessor :lease_number, :state, :county, :description, :requested_delivery,  :service

  def initialize(lease_number: "", state: "", county: "", description: "", requested_delivery: "")
    @state = state
    @county = county
    @lease_number = lease_number
    @description = description
    @requested_delivery = requested_delivery
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
  # def checkbox_to_flows
  #   flow_string.split('\n').map do |flow_string|
  #     Flow.new(flow_type: flow_string)
  #   end
  # end

end
