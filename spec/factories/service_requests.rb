# FactoryGirl.define do
#   factory : do
#     lease_number "12345"
#
#     trait :received do
#       after(:pending) do |service|
#         FactoryGirl.create(:service_transition, :received, service: service )
#       end
#     end
#   end
#
#   factory :service_transition do
#     service
#
#     trait :received do
#       to_state "received"
#     end
#   end

