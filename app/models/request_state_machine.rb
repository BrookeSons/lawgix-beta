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


  event :start do
     transition from: :pending, to: :received
  end

  event :check do
    transition from: :received, to: :resource_check
  end

  event :check_result do
    transition from: :resource_check, to: [:accepted, :declined, :modified]
  end

  event :assign do
    transition from: :accepted, to: :assigned
  end
end
