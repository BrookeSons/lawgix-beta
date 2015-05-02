require 'rails_helper'
require 'shoulda/matchers'

describe Lease do

  context "Associations" do

    it {should have_many(:parcels)}
    it {should have_many(:lessors)}
    it {should have_many(:services)}
    it {should have_many(:contacts)}
    it {should have_many(:documents)}

  end

end
