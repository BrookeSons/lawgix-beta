require 'rails_helper'

feature "Add new Project" do

  scenario "user creates a new Project that show in Index" do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit new_project_path
    fill_in "Name", with: "Lawgix"
    fill_in "Description", with: "Lawgix Lease"
    click_on "Create Project"
    visit projects_path
    expect(page).to have_content("Lawgix")
  end


  scenario "user creates a new Project that shows in Show" do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit new_project_path
    fill_in "Name", with: "Lawgix"
    fill_in "Description", with: "Lawgix Lease"
    click_on "Create Project"
    visit project_path()
    expect(page).to have_content("Lawgix")
  end





end
