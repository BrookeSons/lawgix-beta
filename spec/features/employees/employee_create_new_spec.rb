require 'rails_helper'

feature "Add new Employee" do

  scenario "user creates a new Employee" do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit new_employee_path
    fill_in "First name", with: "Anne"
    click_on "Create Employee"
    visit employee_path(user)
    expect(page).to have_content("Anne")
  end


end

