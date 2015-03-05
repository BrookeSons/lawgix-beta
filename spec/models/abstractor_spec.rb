require 'rails_helper'
require 'shoulda/matchers'


describe Abstractor do

  context "Associations" do
    it { is_expected.to have_and_belong_to_many(:title_abstracts).through(:user_abstracts)}
  end

end
