FactoryGirl.define do

  factory :user do
    first_name "Test"
    last_name "User"
    email "test@example.com"
    password "please123"



    trait :lawgix do
      role 'lawgix'
    end

    trait :employee do
      role 'client'
    end

    trait :lawyer do
      role 'lawyer'
    end

  end
end
