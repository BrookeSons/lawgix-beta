class Service < ActiveRecord::Base

  protokoll :sr_name, :pattern => "SR-%y-%m-####"

 include Statesman::Adapters::ActiveRecordQueries

 has_many :service_transitions

 has_many :flows
 has_many :parcels
 has_many :contacts
 has_many :lessors
 has_many :documents
 has_many :title_abstracts
 has_and_belongs_to_many :users, through: :services_users
 has_and_belongs_to_many :employees, through: :services_users
 has_and_belongs_to_many :lawyers, through: :services_users
 has_and_belongs_to_many :abstractors, through: :services_users
 has_and_belongs_to_many :companies, through: :services_companies
 has_and_belongs_to_many :servicers, through: :companies_services
 belongs_to :project
 belongs_to :lease


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

