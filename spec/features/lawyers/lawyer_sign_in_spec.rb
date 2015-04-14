require 'rails_helper'

# Feature: Lawyer_sign_in

#   As a lawyer
#   I want to sign in
#   So I can visit protected areas of the site
feature 'Sign in', :devise do

  #
  # # Scenario: Lawyer cannot sign in if not registered
  # #   Given I do not exist as a user
  # #   When I sign in with valid credentials
  # #   Then I see an invalid credentials messag˙
  # scenario 'Lawyer cannot sign in if not registered' do
  #   signin('test@example.com', 'please123')
  #   expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
  # end
  #
  # # Scenario: Lawyer can sign in with valid credentials
  # #   Given I exist as a user
  # #   And I am not signed in
  # #   When I sign in with valid credentials
  # #   Then I see a success message
  # scenario 'lawyer can sign in with valid credentials' do
  #   lawyer = FactoryGirl.create(:lawyer)
  #   signin(lawyer.email, lawyer.password)
  #   expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  # end
  #
  # # Scenario: Lawyer cannot sign in with wrong email
  # #   Given I exist as a user
  # #   And I am not signed in
  # #   When I sign in with a wrong email
  # #   Then I see an invalid email message
  # scenario 'lawyer cannot sign in with wrong email' do
  #   lawyer = FactoryGirl.create(:lawyer)
  #   signin('invalid@email.com', lawyer.password)
  #   expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
  # end
  #
  # # Scenario: Lawyer cannot sign in with wrong password
  # #   Given I exist as a user
  # #   And I am not signed in
  # #   When I sign in with a wrong password
  # #   Then I see an invalid password message
  # scenario 'lawyer cannot sign in with wrong password' do
  #   lawyer = FactoryGirl.create(:lawyer)
  #   signin(lawyer.email, 'invalidpass')
  #   expect(page).to have_content I18n.t 'devise.failure.invalid', authentication_keys: 'email'
  # end
  #
  #
  #
  #
  #

end
