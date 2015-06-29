FactoryGirl.define do
  factory :owner, class: 'Owner' do
    first_name "Tom"
    last_name "Brooke"
    address "101 S. Main St."
    city "China Grove"
    state "NC"
    zip "28023"
    phone "(704) 857-6121"
    email "tom.brooke@gmail.com"
  end

end
