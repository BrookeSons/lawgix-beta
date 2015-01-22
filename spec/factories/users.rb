FactoryGirl.define do

  factory :user do
    name "Test User"
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
      name "Tom Client"
      email "tom.client@gmail.com"
      password "brooke8518"
    end

    factory :lawyer, class: Lawyer, parent: :user do
      name "Tom Lawyer"
      email "tom.lawyer@gmail.com"
      password "brooke8518"
    end


  end
end
