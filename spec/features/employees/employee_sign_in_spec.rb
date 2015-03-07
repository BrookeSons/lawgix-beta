require 'rails_helper'

# Feature: Employee_Sign in

#   As a employee
#   I want to sign in
#   So I can visit protected areas of the site
feature 'Sign in', :devise do

  # Scenario: Employee cannot sign in if not registered
  #   Given I do not exist as a user
  #   When I sign in with valid credentials
  #   Then I see an invalid credentials message
  scenario 'employee cannot sign in if not registered' do
    signin('test@example.com', 'please123')
    expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
  end

  # Scenario: Employee can sign in with valid credentials
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with valid credentials
  #   Then I see a success message
  scenario 'employee can sign in with valid credentials' do
    employee = FactoryGirl.create(:employee)
    signin(employee.email, employee.password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  end

  # Scenario: Employee cannot sign in with wrong email
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with a wrong email
  #   Then I see an invalid email message
  scenario 'employee cannot sign in with wrong email' do
    employee = FactoryGirl.create(:employee)
    signin('invalid@email.com', employee.password)
    expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
  end

  # Scenario: Employee cannot sign in with wrong password
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with a wrong password
  #   Then I see an invalid password message
  scenario 'Employee cannot sign in with wrong password' do
    employee = FactoryGirl.create(:employee)
    signin(employee.email, 'invalidpass')
    expect(page).to have_content I18n.t 'devise.failure.invalid', authentication_keys: 'email'
  end


end
