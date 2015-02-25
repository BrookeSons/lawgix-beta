require 'rails_helper'

feature "Dispatch a New Service" do

  scenario "user dispatches a Service Request to an abstractor" do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit new_service_dispatcher_path
    expect(page).to have_content("Dispatch to Abstractor")
  end


end

