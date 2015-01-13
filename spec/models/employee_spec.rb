describe Employee do

  before(:each) { @employee = Employee.new(email: 'user@example.com') }

  subject { @employee }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@employee.email).to match 'user@example.com'
  end



  describe Employee do
    # it { should belong_to(:Company) }

    [:name, :email].each do |attribute|
      describe "##{attribute}" do
        it 'delegates to the user' do
          user = build_stubbed(:user)
          user.stubs(attribute).returns('text')
          client = build_stubbed(:employee, user: user)

          client.send(attribute)

          expect(user).to have_received(attribute)
        end
      end
    end
  end


end

