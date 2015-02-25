FactoryGirl.define do
  factory :service do
  lease_number "12345"
start_date "2014-12-03"
end_date "2014-12-03"
requested_delivery "2014-12-03"
lease_file "MyString"

    trait :received do
      after(:pending) do |service|
        FactoryGirl.create(:service_transition, :received, service: service )
      end
    end
  end


  factory :service_transition do
    service

    trait :received do
      to_state "received"
    end
    trait :received do

    end
  end
end

