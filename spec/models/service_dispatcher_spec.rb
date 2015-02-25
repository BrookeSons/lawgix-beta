require 'rails_helper'

describe 'Service Dispatcher' do

  let(:service) {Service.new(lease_number: '12345')  }

  before(:all) do

    service.transition_to!(:submitted)
    service.transition_to!(:approve_fee)
    service.transition_to!(:fee_accepted)
  end


  it 'should receive a service in the fee accepted state' do

    expect(service.current_state).to eq('fee_accepted')

  end
end