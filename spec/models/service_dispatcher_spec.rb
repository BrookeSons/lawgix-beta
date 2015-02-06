require 'rails_helper'
require 'spec_helper'
include Warden::Test::Helpers


describe 'ServiceDispatcher' do

  let(:service) {ServiceDispatcher.new(lease_number: '12345')  }

  it 'Should receive an existing service in the pending state' do
    expect(service.current_state).to eq('pending')
  end

  it 'Should transition to received when sent received' do
    service.transition_to!(:submitted)
    expect(service.current_state).to eq('submitted')
  end

end
