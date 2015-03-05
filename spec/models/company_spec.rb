require 'rails_helper'
require 'shoulda/matchers'

describe Company do

  context "associations" do
    it { is_expected.to have_many(:employees)}
  end

end
