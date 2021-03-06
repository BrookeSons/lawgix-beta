require 'rails_helper'
require 'shoulda/matchers'

describe TitleAbstract do
  context "associations" do
  it {should belong_to(:parcel)}
  it {should have_many(:deeds)}
  it {should have_and_belong_to_many(:abstractors)}
  end
end
