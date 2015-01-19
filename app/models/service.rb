class Service < ActiveRecord::Base

 #

 include Statesman::Adapters::ActiveRecordQueries

 has_many :service_transitions

 has_many :flows
 has_many :lessees
 has_many :leases
 has_many :parcels
 has_many :employees
 has_many :lawyers
 belongs_to :company
  

 accepts_nested_attributes_for :lessees
 accepts_nested_attributes_for :flows
 accepts_nested_attributes_for :leases
 accepts_nested_attributes_for :parcels




 has_paper_trail

 # Initialize the state machine

 def state_machine
  @state_machine ||= RequestStateMachine.new(self, transition_class: ServiceTransition)
 end

 # Optionally delegate some methods
 delegate :can_transition_to?, :transition_to!, :transition_to, :current_state, :allowed_transitions,
          to: :state_machine


 def accepted

 end

 private


 def self.transition_class
  ServiceTransition
 end


 def self.initial_state
   RequestStateMachine.initial_state
 end
end

