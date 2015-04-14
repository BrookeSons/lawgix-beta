require 'rails_helper'
require 'shoulda/matchers'


describe Abstractor do

  context "Associations" do
    it {should have_and_belong_to_many(:title_abstracts).through(:users_abstracts )}
  end

end
