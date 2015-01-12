FactoryGirl.define do
  factory :service_request do
    lease_number "12345"

    trait :received do
      after(:pending) do |service|
        FactoryGirl.create(:order_transition, received: received)
      end
    end
  end

  factory :order_transition do
    service

    trait :received do
      to_state "received"
    end
  end


end