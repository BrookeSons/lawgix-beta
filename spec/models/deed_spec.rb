require 'rails_helper'
require 'shoulda/matchers'


describe Deed do

  context "Associations" do
    it {should have_many(:documents)}
    it {should have_many(:deed_title_abstracts)}
    it {should have_many(:title_abstracts)}
  end
end
