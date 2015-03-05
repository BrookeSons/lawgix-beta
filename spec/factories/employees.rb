FactoryGirl.define do

  factory :employee do
    company
    first_name "Test"
    last_name "User"
    email "test@example.com"
    password "please123"

  end
end
