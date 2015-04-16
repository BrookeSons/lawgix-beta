require 'rails_helper'
require 'shoulda/matchers'

describe Lawyer do

  context "Associations" do
    it {should belong_to(:lawfirm)}
  end

end
