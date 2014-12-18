class ServiceCreator

  attr_accessor :lease_number, :last_name, :state, :county, :service

  def initialize(lease_number: "", state: "", county: "", last_name: "")
    @state = state
    @last_name = last_name
    @county = county
    @lease_number = lease_number
  end


  def build
    self.service = Service.new(lease_number: lease_number, state: state,  county: county)
    service.lessees = [Lessee.new(last_name: last_name)]
       # service.flows = Lease.new(last_name: last_name)
    # checkbox_to_flows
    service
  end

  def create
    build
    service.save
  end

  # def lessee_to_lessees
  #   lessees.each do |lessee|
  #     Lessee.new(last_name: last_name)
  #   end
  # end
  def checkbox_to_flows
    flow_string.split('\n').map do |flow_string|
      Flow.new(flow_type: flow_string)
    end
  end

end
