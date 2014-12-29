FactoryGirl.define do

  factory :user do
    name "Test User"
    email "test@example.com"
    password "please123"

    trait :admin do
      role 'admin'
    end

    trait :ogx_admin do
      role 'ogx_admin'
    end

  end
end
