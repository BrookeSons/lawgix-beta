require 'rails_helper'

describe Lease  do

  context "Associations" do

    it {should have_many(:parcels)}
    it {should have_many(:lessees)}
    it {should have_many(:documents)}
    it {should have_and_belong_to_many(:users)}

  end

end
