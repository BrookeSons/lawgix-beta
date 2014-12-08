require 'rails_helper'



RSpec.describe Service do

  describe 'initialization' do

      let(:service) {Service.new}
      let(:flow) {Flow.new}

    it 'considers a service with no work flows to be done' do
      expect(service).to be_done
    end

    it 'knows that a service with an incomplete workflow is not done' do
      service.flows << flow
      expect(service).not_to be_done
    end

    it 'considers a service complete if the flows are complete' do
      service.flows << flow
      flow.mark_completed
      expect(service).to be_done
    end

  end
end