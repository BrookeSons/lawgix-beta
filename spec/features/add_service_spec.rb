require 'rails_helper'


RSpec.describe ServiceCreator do

describe 'adding services' do

  it 'allows a user to create a service with flows' do
    pending
    visit new_service_path
    fill_in "Lease number", with: "123456"
    fill_in "Lessee first name", with: "Exxon"
    click_on("Create Service")
    visit services_path
    expect(page).to have_content('Services')
    expect(page).to have_content('Exxon')
  end
end

end