 require 'rails_helper'


RSpec.describe ServiceCreator do

fixtures :all
include Warden::Test::Helpers

  describe 'adding services' do

  it "creates a Service Creator object given a lease number, State and county" do
     creator = ServiceCreator.new(lease_number: '12345', state: 'Ohio', county: 'Rowan')
     creator.build
     expect(creator.lease_number).to eq('12345')
     expect(creator.state).to eq('Ohio')
     expect(creator.county).to eq('Rowan')
  end

  it "creates a Service Creator object and iniitalizes a lessee" do
     creator = ServiceCreator.new(lease_number: '12345', state: 'Ohio', county: 'Rowan', last_name: last_name)
     creator.build
     expect(creator.lease_number).to eq('12345')
     expect(creator.state).to eq('Ohio')
     expect(creator.county).to eq('Rowan')
     expect(creator.lessee.last_name).to eq('Jones')
  end
    before(:example) do
      login_as users(:user)
    end

    it 'allows a user to create a service' do
      visit new_service_path
      fill_in 'Lease number', with: "123456"
      fill_in "County", with: "Rowan"
      fill_in "State", with: "Ohio"
      click_on("Create Service")
      visit services_path
      expect(page).to have_content('Services')
      expect(page).to have_content('123456')
      expect(page).to have_content('Rowan')
      expect(page).to have_content('Ohio')
    end
  end
 
 it 'allows a user to create a Service with a lessee' do

   visit new_service_path
   fill_in "Lease number", with: "123456"
   fill_in "County", with: "Wake"
   file_in 'Lessee Last Name', with: 'Jones'
   click_on("Create Service")
   visit services_path
   expect(page).to have_content("123456")
   expect(page).to have_content("Jones")
  end
end
