require 'rails_helper'
require 'shoulda/matchers'

describe Document do

  context "Associations" do
    it {should have_many(:users)}
  end
end
