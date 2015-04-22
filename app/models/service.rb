class Service < ActiveRecord::Base

 include Statesman::Adapters::ActiveRecordQueries

 has_many :service_transitions

 has_many :flows
 has_many :lessees
 has_many :parcels
 has_many :documents
 has_and_belongs_to_many :users, through: :services_users
 has_and_belongs_to_many :employees, through: :services_users
 has_and_belongs_to_many :lawyers, through: :services_users
 has_and_belongs_to_many :abstractors, through: :services_users
 belongs_to :company
 belongs_to :project
 belongs_to :lease


 serialize :serial_flows, Array
  

 accepts_nested_attributes_for :lessees
 accepts_nested_attributes_for :flows
 accepts_nested_attributes_for :parcels
 accepts_nested_attributes_for  :documents



 has_paper_trail

 # Initialize the state machine

 def state_machine
  @state_machine ||= RequestStateMachine.new(self, transition_class: ServiceTransition)
 end

 # Optionally delegate some methods
 delegate :can_transition_to?, :transition_to!, :transition_to, :current_state, :allowed_transitions,
          to: :state_machine

 private


 def self.transition_class
  ServiceTransition
 end


 def self.initial_state
   RequestStateMachine.initial_state
 end
end

