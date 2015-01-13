class RequestStateMachine
  include Statesman::Machine


  # possible states

  state :pending, initial: :true
  state :received
  state :accepted
  state :modified
  state :declined
  state :resource_check
  state :assigned




  transition from: :pending, to: :received


  # Transition rules

  transition from: :received, to: :resource_check
  transition from: :resource_check, to: [:accepted, :declined, :modified]
  transition from: :accepted, to: :assigned

end