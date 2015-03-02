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
  state :price
  state :approve_fee
  state :fee_accepted
  state :priced
  state :confirmed
  state :assigned
  state :accepted_by_abstractor
  state :completed
  state :abstract
  state :opinion
  state :curative


  event :start do
     transition from: :pending, to: [:fee_accepted, :assigned]
  end

  # event :price do
  #   transition from: :submitted, to: :approve_fee
  # end

  event :priced do
    transition from: :submitted, to: :fee_accepted
  end

  event :check_result do
    transition from: :resource_check, to: [:submitted, :declined, :modify]
    transition from: :modified, to: :submitted
  end

  event :accepted_by_abstractor do
    transition from: :assigned, to: :accepted_by_abstractor
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
    transition from: :fee_accepted, to: :assigned
  end

  event :completed do
    transition from: :abstract, to: :completed
    transition from: :opinion,  to: :completed
    transition from: :curative, to: :completed
  end
end
