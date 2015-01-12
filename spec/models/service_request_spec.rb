require 'rails_helper'

describe "service_request" do

  it "can transition from state pending to state received" do
    expect { service.transition_to!(:received).to_not raise_error }
  end

  it "cannot transition from state foo to state bar" do
    expect { service.transition_to!(:received) }.to raise_error(Statesman::GuardFailedError)
  end

end