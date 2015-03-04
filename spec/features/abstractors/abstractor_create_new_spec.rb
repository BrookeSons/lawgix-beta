require 'rails_helper'

feature "Add new Abstractor" do

  scenario "user creates a new Abstractor" do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit new_abstractor_path
    fill_in "Last Name", with: "Brooke"
    click_on "Create Abstractor"
    visit abstractors_path
    expect(page).to have_content("Brooke")
  end


end

