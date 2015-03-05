require 'rails_helper'

feature "Add new Abstractor" do

  scenario "user creates a new Abstractor" do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit new_abstractor_path
    fill_in "First name", with: "Tom"
    fill_in "Last name", with: "Brooke"
    fill_in "Email", with: "tom.brooke@gmail.com"
    fill_in "Password", with: "mainstreet"
    click_on "Create Abstractor"
    visit abstractors_path
    expect(page).to have_content("Brooke")
  end


end

