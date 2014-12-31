require 'rails_helper'
require 'pundit/rspec'

describe 'ClientPolicy' do

  it 'should Set a policy for a client' do

    true.should == false
  end
end