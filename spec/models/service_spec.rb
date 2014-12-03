require 'rails_helper'

RSpec.describe Service do
  it 'considers a service with no work flows to be done' do
    service = Service.new
    expect(service.done?).to be_truthy
  end

  it 'knows that a service with and incomplete workflow is not done' do
    service = Service.new
    flow = Flow.new
    service.flows << flow
    expect(service.done?).to be_falsy
  end
end