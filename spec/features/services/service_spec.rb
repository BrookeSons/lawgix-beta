require 'rails_helper'

feature "Add new Service" do

  scenario "user creates a new Service Request" do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    service = build(:service)
    visit new_service_path(service)
    fill_in "Lease number", with: "12345"
    click_on "Create Service Request"
    visit services_path
    expect(page).to have_content("12345")
  end


end

