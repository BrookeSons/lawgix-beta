require 'rails_helper'
require 'shoulda/matchers'

describe Company do

  context "associations" do
    it {should have_many(:employees)}
  end

end
