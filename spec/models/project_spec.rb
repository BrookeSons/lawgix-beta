require 'rails_helper'
require 'shoulda/matchers'

describe Project do

  context "Associations" do
    it { should have_many(:services) }
    it { should have_many(:title_abstracts) }
    it { should have_many(:contacts) }
    it { should have_many(:lessors) }
  end
end
