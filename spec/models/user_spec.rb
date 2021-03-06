describe User do


  context "Associations" do
    it{should have_and_belong_to_many(:documents)}
  end

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

end

