class ServiceDispatcher

  include ActiveModel::Model

  # Form object to display and transition states at the Service Request Level


  attr_accessor :service


  def receive
    service.transition_to!(:submitted)
    redirect_to dashboards_path
  end



  # Optionally delegate some methods
  delegate :can_transition_to?, :transition_to!, :transition_to, :current_state, :allowed_transitions,
           to: :state_machine





end
