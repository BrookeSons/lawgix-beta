class ServiceTransition < ActiveRecord::Base
  include Statesman::Adapters::ActiveRecordTransition

  
  belongs_to :service, inverse_of: :service_transitions

  has_paper_trail





end
