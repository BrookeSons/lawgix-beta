require 'rails_helper'

RSpec.describe Flow do
  it 'can distinguish a completed flow' do
    flow = Flow.new
    expect(flow).not_to be_complete
    flow.mark_completed
    expect(service).to be_done
  end
end