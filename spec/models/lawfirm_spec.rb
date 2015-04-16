require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Lawfirm, :type => :model do

  context "Associations" do
    it {should have_many(:lawyers)}
  end

end
