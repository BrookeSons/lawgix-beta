require 'rails_helper'

describe 'with sers and role' do
  def log_in_as(user)
    visit new_user_session_path
    fill_in('user_email', :with => user.email)
    fill_in('user_password', :with => user.password)
    click_button('Log in')
  end

  let(:user) {User.create(email 'test@example.com', password: 'pasword')
    }
  it 'allows a logged--in user to view the lawgix index page' do
    log_in_as(user)
    visit(services_path)
    expect(current_path).to eq(services_path)
  end

end