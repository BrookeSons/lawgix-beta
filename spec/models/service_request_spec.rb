require 'rails_helper'

describe "service_request" do

     let(:service) {Service.new}

  it "starts in a pending state" do
       expect {service.current_state(:pending).to_not raise_error }
  end

  it "can transition from state pending to state received" do
    expect { service.transition_to!(:received).to_not raise_error }
  end

  it "cannot transition from state pending to state received unless accepted" do

    expect { service.transition_to!(:received) }.to raise_error(Statesman::GuardFailedError)
  end

end