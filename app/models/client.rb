class Client < ActiveRecord::Base
  belongs_to :User
  belongs_to :Company
  delegate :new,:create,  to: :user


end

