require 'rails_helper'

RSpec.describe ServiceCreator do

  it 'creates a service given a lease number' do

    creator = ServiceCreator.new(lease_number: '123456')
    creator.build
    expect(creator.service.lease_number).to eq('123456')
  end

  it 'allows a user to create a Service with workflows' do
    visit new_service_path
    fill_in "Lease Number", with: "123456"
    fill_in "Lessee's Last Name", with: "Exxon"
    fill_in "Flows",  with: "Abstract\nOpinion\nCurative"
    click_on("Create Service")


    visit services_path
    expect(page).to have_content("123456")
    expect(page).to have_content("Abstract")
    expect(page).to have_content("Opinion")
    expect(page).to have_content("Curative")
  end

end