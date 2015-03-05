require 'rails_helper'
require 'shoulda/matchers'


describe Deed do

  context "Associations" do
    it { is_expected.to have_and_belong_to_many(:title_abstracts).through(:deed_title_abstract)}
  end
end
