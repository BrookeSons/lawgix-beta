class RequestStateMachine
  include Statesman::Machine


  # possible states

  state :pending, initial: :true
  state :received
  state :accepted
  state :modified
  state :declined
  state :resource_check
  state :priced
  state :assigned
  state :completed
  state :abstract
  state :opinion
  state :curative


  event :start do
     transition from: :pending, to: :received
  end

  event :check do
    transition from: :received, to: :resource_check
  end

  event :check_result do
    transition from: :resource_check, to: [:accepted, :declined, :modify]
    transition from: :modified, to: :accepted
  end

  event :redo do
    transition from: :modify, to: :modified
  end

  event :price do
    transition from: :accepted, to: :priced
  end

  event :dispatch do
    transition from: :accepted to: [:abstract, :opinion, :curative]
  end

  event :assign do
    transition from: :priced, to: :assigned
  end

  event :completed do
    transition from: :accepted, to: :completed
    transition from: :abstract, to: :completed
    transition from: :opinion,  to: :completed
    transition from: :curative, to: :completed
  end
end
