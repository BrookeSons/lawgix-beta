require 'rails_helper'


describe 'ServiceDispatcher' do

  let(:service) {Service.new}

  it 'Service Dispatcher should receive a service in the pending state' do
         expect(service.current_state).to eq('pending')
  end


  it 'Service Dispatcher changes state to received when Lawgix opens request' do
            visit service_path

             click_on received

  end
end