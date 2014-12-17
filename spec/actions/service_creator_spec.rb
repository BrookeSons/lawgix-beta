require 'rails_helper'


RSpec.describe ServiceCreator do

fixtures :all
include Warden::Test::Helpers


  describe 'adding services' do

  it "creates a service object given a lease number, State and county" do
     creator = Service.new(lease_number: '12345', state: 'Ohio', county: 'Rowan')
     creator.build
     expect(creator.lease_number).to eq('12345')
     expect(creator.state).to eq('Ohio')
     expect(creator.county).to eq('Rowan')
  end

    before(:example) do
      login_as users(:user)
    end

    it 'allows a user to create a service' do
      visit new_service_path
      fill_in 'Lease number', with: "123456"
      fill_in "Lessee last name", with: "Exxon"
      fill_in "County", with: "Rowan"
      fill_in "State", with: "Ohio"
      click_on("Create Service")
      visit services_path
      expect(page).to have_content('Services')
      expect(page).to have_content('Exxon')
    end
  end

  # it 'allows a user to create a Service with workflows' do
  #   pending
  #   visit new_service_path
  #   click_on("Create Service")
  #
  #
  #   visit services_path
  #   expect(page).to have_content("123456")
  #   expect(page).to have_content("Abstract")
  #   expect(page).to have_content("Opinion")
  #   expect(page).to have_content("Curative")
  # end
  #

end
