require 'rails_helper'
require 'shoulda/matchers'

describe Document do

  context "Associations" do
    it {should belong_to(:service)}
    it {should belong_to(:lease)}
    it {should have_and_belong_to_many(:users)}
  end
end
