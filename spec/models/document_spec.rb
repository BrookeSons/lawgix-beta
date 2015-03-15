require 'rails_helper'
require 'shoulda/matchers'

describe Document do

  context "Associations" do
    it {should belong_to(:service)}
    it {should belong_to(:lease)}
    it {should have_many(:users).through(:user_documents)}
  end
end
