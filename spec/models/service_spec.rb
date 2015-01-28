require 'rails_helper'


RSpec.describe Service do


  let(:service) {Service.new(lease_number: '12345')  }

  it 'Should receive an existing service in the pending state' do
         expect(service.current_state).to eq('pending')
  end

  it 'Should transition to received when sent received' do
    service.transition_to!(:submitted)
    expect(service.current_state).to eq('submitted')
  end

end
