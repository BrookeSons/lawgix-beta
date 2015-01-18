require 'rails_helper'


describe 'ServiceDispatcher' do

  let(:service) {Service.new(lease_number: '12345')  }

  it 'Should receive a service in the pending state' do
         expect(service.current_state).to eq('pending')
  end
 
  it "Should display the pending object in the 'New Request' view" do
      visit service_transitions_path
      within('div#new-request') do
        expect(page).to have_content('12345')
      end
  end

  it 'Service Dispatcher changes state to received when Lawgix presses ok button' do
            visit service_path

             click_on received

  end
end
