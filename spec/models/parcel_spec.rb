require 'rails_helper'
require 'shoulda/matchers'


describe Parcel do

  context "Associations" do
    it {should have_one (:title_abstract)}
  end
end

