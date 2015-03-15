require 'rails_helper'
describe 'allows uploading of documents' do
  before :each do
    @file = fixture_file_upload('files/test_lic.xml', 'text/xml')
  end

  it "can upload a document" do
    post :upload_document, :upload => @file
    response.should be_success
  end
end