require 'rails_helper'
require 'spec_helper'
include Warden::Test::Helpers


describe 'ServiceDispatcher' do

fixtures :all
Warden.test_mode!

before(:example) do
  login_as users(:user)
end

  let(:service) {Service.new(lease_number: '12345')  }

  it 'Should receive an existing service in the pending state' do
         expect(service.current_state).to eq('pending')
  end
 
  it "Should display the pending service in the New Request view" do
      visit dashboards_path
      save_and_open_page
      within('#new-requests') do
        expect(page).to have_content('12345')
      end
  end

  it 'Service Dispatcher changes state to received when Lawgix presses ok button' do
           visit service_path
           click_on received

  end
end
