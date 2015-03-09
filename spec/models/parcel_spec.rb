require 'rails_helper'
require 'shoulda/matchers'


describe Parcel do

  context "Associations" do
    it {should have_many(:title_abstracts)}
  end
end

