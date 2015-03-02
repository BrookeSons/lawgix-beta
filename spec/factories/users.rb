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

    factory :employee, class: Employee, parent: :user do
      last_name "Client"
      email "tom.client@gmail.com"
      password "brooke8518"
    end

    factory :abstractors, class: Abstractor, parent: :user do
      last_name "Abser"
      email "tom.client@gmail.com"
      password "brooke8518"
    end
    factory :lawyer, class: Lawyer, parent: :user do
      last_name "Lawyer"
      email "tom.lawyer@gmail.com"
      password "brooke8518"
    end


  end
end
