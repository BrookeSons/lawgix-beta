require 'rails_helper'


describe Service do


  let(:service) {Service.new(lease_number: '12345')  }
  let(:abstractors) {Abstractor.new(first_name: 'Tom', last_name: 'Brooke')}
  let(:lawyer) {Lawyer.new(first_name: 'Carole', last_name: 'Brooke')}
  let(:dispatcher) {ServiceDispatcher.new(service: service, dispatcher: abstractor)}


  it 'Should receive an existing service in the pending state' do
         expect(service.current_state).to eq('pending')
  end

  it 'Should transition to received when sent received' do
    service.transition_to!(:fee_accepted)
    expect(service.current_state).to eq('fee_accepted')
  end

  # it 'should have fee accepted before assign' do
  #   service.transition_to!(:submitted)
  #   service.transition_to!(:approve_fee)
  #   service.transition_to!(:fee_accepted)
  #   expect(service.current_state).to eq('fee_accepted')
  # end

  # describe '#assign' do
  #
  #   it 'should receive a service and an abstractor'
  #    expect service.assign
  # end


end


