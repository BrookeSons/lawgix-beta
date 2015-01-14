class ServiceRequest < ActiveRecord::Base
  include Statesman::Adapters::ActiveRecordTransition

   #  ServiceTransition

  has_and_belongs_to_many :users
  belongs_to :service, inverse_of: :service_requests

  has_paper_trail


end
