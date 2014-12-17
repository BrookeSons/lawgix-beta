class ServiceCreator
  # < ActiveRecord::Base
  # include Rails.application.routes.url_helpers

  attr_accessor :lease_number, :lessee_last_name, :state, :county, :flow_string, :service, :lessee

  def initialize(lease_number: "", lessee_last_name: "", state: "", county: "")
    @state = state
    @county = county
    @lease_number = lease_number
    @last_name = lessee_last_name
  end


  def build
    self.service = Service.new(lease_number: lease_number, state: state,  county: county)
     # service.flows = checkbox_to_flows
    # checkbox_to_flows
    service
  end

  def create
    build
    service.save
  end

  def checkbox_to_flows
    flow_string.split('\n').map do |flow_string|
      Flow.new(flow_type: flow_string)
    end
  end

  private

  def lease
    self.lease
  end

  def lease_numnber
    self.lease.lease_number
  end



end
