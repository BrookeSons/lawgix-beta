class ServiceCreator

  attr_accessor :lease_number, :lessee_last_name, :flow_string, :service

  def initialize(lease_number: "", lessee_last_name: "", flow_string: "")
    @lease_number = lease_number
    @lessee_last_name = lessee_last_name
    @flow_string = flow_string
  end


  def build
    self.service = Service.new(lease_number: lease_number, lessee_last_name: lessee_last_name)
    service.flows = convert_string_to_flow
    service
  end

  def create
    build
    service.save
  end

  def convert_string_to_flow
    flow_string.split('\n').map do |flow_string|
      Flow.new(flow_type: flow_string)
    end
  end


end