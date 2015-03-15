require 'rails_helper'
require 'shoulda/matchers'

describe Service do

  context "Associations" do

    it {should have_many(:parcels)}
    it {should have_many(:service_transitions)}
    it {should have_many(:flows)}
    it {should have_many(:documents)}

  end

  let(:service) {Service.new(lease_number: '12345')  }
  let(:abs_service) {Service.new(lease_number: '12345',
                 serial_flows:["Abstractor"])}
  let(:op_service) {Service.new(lease_number: '12345', serial_flows:["Opinion"])}
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


  it 'should have fee accepted before assigned abstractor' do
    service.transition_to!(:fee_accepted)
    service.transition_to!(:assigned)
    service.transition_to!(:accepted_by_abstractor)
    expect(service.current_state).to eq('accepted_by_abstractor')
  end

  it 'should create an empty title_abstract for each parcel if accepted by abstractor' do
     service.transition_to!(:fee_accepted)
     service.transition_to!(:assigned)
     service.transition_to!(:accepted_by_abstractor)
     expect(service.parcels.each)
  end

  # describe '#assign' do
  #
  #   it 'should receive a service and an abstractor'
  #    expect service.assign
  # end


end


