require 'rails_helper'

require 'shoulda/matchers'

describe TitleAbstract, :type => :model do

  it {should have_many(:deeds)}
end
