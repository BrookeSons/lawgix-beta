class RequestStateMachine
  include Statesman::Machine


  # possible states

  state :pending, initial: :true
  state :received
  state :submitted
  state :modify
  state :modified
  state :declined
  state :resource_check

  state :priced
  state :confirmed
  state :assigned
  state :completed
  state :abstract
  state :opinion
  state :curative


  event :start do
     transition from: :pending, to: :submitted
  end

  event :check do
    transition from: :submitted, to: :resource_check
  end

  event :check_result do
    transition from: :resource_check, to: [:submitted, :declined, :modify]
    transition from: :modified, to: :submitted
  end

  event :redo do
    transition from: :modify, to: :modified
  end

  event :price do
    transition from: :received, to: :priced
  end

  event :dispatch do
    transition from: :submitted, to: [:abstract, :opinion, :curative]
  end

  event :assign do
    transition from: :priced, to: :assigned
  end

  event :completed do
    transition from: :submitted, to: :completed
    transition from: :abstract, to: :completed
    transition from: :opinion,  to: :completed
    transition from: :curative, to: :completed
  end
end
