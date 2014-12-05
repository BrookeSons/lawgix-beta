require 'rails_helper'

RSpec.describe ServiceCreator do

  it 'creates a service given a lease number' do

    creator = ServiceCreator.new(lease_number: '123456')
    creator.build
    expect(creator.service.lease_number).to
    eq('123456')
  end

end