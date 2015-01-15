class ServiceRequest < ActiveRecord::Base
  include Statesman::Adapters::ActiveRecordTransition

   #  ServiceTransition

  belongs_to :users,   inverse_of: :service_requests
  belongs_to :service, inverse_of: :service_requests

  has_paper_trail


end
