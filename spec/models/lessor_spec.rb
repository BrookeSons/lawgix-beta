require 'rails_helper'
require 'shoulda/matchers'

describe Lessor do

  context "Associations" do
    it {should belong_to(:project)}
    it {should belong_to(:lease)}
    it {should belong_to(:service)}
  end

end
