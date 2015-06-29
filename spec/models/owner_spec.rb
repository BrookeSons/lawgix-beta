require 'rails_helper'
require 'shoulda/matchers'

describe Owner do

  context "Associations" do
    it {should belong_to(:service)}
    it {should belong_to(:lease)}
    it {should belong_to(:parcel)}
    it {should belong_to(:service)}
  end
end
