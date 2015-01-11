describe Client do

  before(:each) { @client = Client.new(email: 'user@example.com') }

  subject { @client }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@client.email).to match 'user@example.com'
  end



  describe Client do
    # it { should belong_to(:Company) }

    [:name, :email].each do |attribute|
      describe "##{attribute}" do
        it 'delegates to the user' do
          user = build_stubbed(:user)
          user.stubs(attribute).returns('text')
          client = build_stubbed(:client, user: user)

          client.send(attribute)

          expect(user).to have_received(attribute)
        end
      end
    end
  end


end

