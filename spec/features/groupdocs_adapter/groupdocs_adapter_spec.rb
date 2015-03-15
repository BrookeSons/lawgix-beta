require 'rails_helper'

include Warden::Test::Helpers

describe 'show files API' do
  fixtures  :all

  it "shows a file on groupdocs", :vcr do
    visit service_path(:services(:service))
    expect(page).to contain('bridge.jpg')
    end
end