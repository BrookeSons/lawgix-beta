class ServiceCreator

  attr_accessor :lease_number, :last_name,:first_name, :state, :county, :description, :requested_delivery,  :service

  def initialize(lease_number: "", state: "", county: "",  description: "", requested_delivery: "",
               last_name: "", first_name:"" )
    @state = state
    @last_name = last_name
    @first_name = first_name
    @county = county
    @lease_number = lease_number
    @requested_delivery = requested_delivery
    @description = description
  end


  def build
    self.service = Service.new(lease_number: lease_number, state: state,  county: county, 
                        description: description, requested_delivery: requested_delivery)
    service.lessees = lessee_to_lessees(last_name, first_name)
  end

  def create
    build
    service.save
  end

   def lessee_to_lessees(last_name, first_name)
       Lessee.new(last_name: last_name, first_name: first_name)
   end
 
  def checkbox_to_flows
    flow_string.split('\n').map do |flow_string|
      Flow.new(flow_type: flow_string)
    end
  end

end
