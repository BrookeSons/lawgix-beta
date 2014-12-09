require 'rails_helper'

RSpec.describe ServicePolicy do
  subject(:policy) { ServicePolicy.new(user, service) }
  let(:user) {User.new}
  let(:service) {Service.new}

      it 'allows an ogx_admin to view a project' do
        user.ogx_admin?
        expect(policy).to permit(:view)
      end

end
