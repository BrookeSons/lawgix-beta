require 'rails_helper'

feature 'uplaod a document' do
  scenario 'should allow uploading of a new document' do
    visit_service_path
    click_on 'Upload Document'

  end
end