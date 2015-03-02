require 'rails_helper'

# Feature: Abstractor_Sign in

#   As an Abstractor
#   I want to sign in
#   So I can visit protected areas of the site
feature 'Sign in', :devise do

  # Scenario: Abstractor cannot sign in if not registered
  #   Given I do not exist as an Abstractor
  #   When I sign in with valid credentials
  #   Then I see an invalid credentials message
  scenario 'abstractor cannot sign in if not registered' do
    signin('test@example.com', 'please123')
    expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
  end

  # Scenario: Abstractor can sign in with valid credentials
  #   Given I exist as an abstractor
  #   And I am not signed in
  #   When I sign in with valid credentials
  #   Then I see a success message
  scenario 'abstractor can sign in with valid credentials' do
    user = FactoryGirl.create(:abstractors)
    signin(user.email, user.password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  end

  # Scenario: Abstractor cannot sign in with wrong email
  #   Given I exist as a Abstractor
  #   And I am not signed in
  #   When I sign in with a wrong email
  #   Then I see an invalid email message
  scenario 'abstractor cannot sign in with wrong email' do
    user = FactoryGirl.create(:abstractors)
    signin('invalid@email.com', user.password)
    expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
  end

  # Scenario: Abstractor cannot sign in with wrong password
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with a wrong password
  #   Then I see an invalid password message
  scenario 'Employee cannot sign in with wrong password' do
    user = FactoryGirl.create(:abstractors)
    signin(user.email, 'invalidpass')
    expect(page).to have_content I18n.t 'devise.failure.invalid', authentication_keys: 'email'
  end


end
