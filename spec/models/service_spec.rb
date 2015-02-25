require 'rails_helper'


RSpec.describe Service do



  let(:service) {Service.new(lease_number: '12345')  }
  let(:abstractor) {Abstractor.new(first_name: 'Tom', last_name: 'Brooke')}
  let(:lawyer) {Lawyer.new(first_name: 'Carole', last_name: 'Brooke')}
  let(:dispatcher) {ServiceDispatcher.new(service: service, dispatcher: abstractor)}


  it 'Should receive an existing service in the pending state' do
         expect(service.current_state).to eq('pending')
  end

  it 'Should transition to received when sent received' do
    service.transition_to!(:submitted)
    expect(service.current_state).to eq('submitted')
  end

  it 'should have fee accepted before dispatch' do
    service.transition_to!(:submitted)
    service.transition_to!(:approve_fee)
    service.transition_to!(:fee_accepted)
    expect(service.current_state).to eq('fee_accepted')
  end



end


