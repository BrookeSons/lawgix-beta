require 'rails_helper'
require 'shoulda/matchers'

describe TitleAbstract do
  context "associations" do
  it {should have_one(:parcel)}
  it {should have_many(:deeds)}
  end
end
