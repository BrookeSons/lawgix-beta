require 'rails_helper'

feature "Add new Employee" do

  scenario "user creates a new Employee" do
    user = FactoryGirl.create(:user)
    company = FactoryGirl.create(:company)
    signin(user.email, user.password)
    visit new_employee_path
    save_and_open_page
    select "Company", company.name
    fill_in "First name", with: "Anne"
    fill_in "Last name", with: "Corriher"
    fill_in "Email", with: "Anne.Corriher@yahoo.com"
    fill_in "Password", with: "mainstreet"
    click_on "Create Employee"
    visit employee_path(user)
    expect(page).to have_content("Anne")
  end


end

