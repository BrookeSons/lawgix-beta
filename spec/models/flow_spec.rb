require 'rails_helper'

RSpec.describe Flow do

  let(:service) {Service.new}
  let(:flow) {Flow.new}

  it 'can distinguish a completed flow' do
    expect(flow).not_to be_complete
    flow.mark_completed
    expect(service).to be_done
  end
end