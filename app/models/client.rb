class Client
  include ActiveModel::Model

  attr_accessor :first_name,
               :last_name,
               :name,  # Company
               :phone,
               :email,
               :type,
               :password,
               :confirmed_password



end