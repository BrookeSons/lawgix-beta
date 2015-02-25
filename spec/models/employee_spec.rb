describe Employee do

  before(:each) { @employee = Employee.new(email: 'user@example.com') }

  subject { @employee }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@employee.email).to match 'user@example.com'
  end



  describe Employee do
     it { should belong_to(:Company) }

  end


end

