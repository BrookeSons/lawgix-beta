require 'rails_helper'

feature "Add new Company" do

  scenario "user creates a new Company" do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit new_company_path
    fill_in "Name", with: "Lawgix"
    click_on "Create Company"
    visit companies_path
    expect(page).to have_content("Lawgix")
  end
end