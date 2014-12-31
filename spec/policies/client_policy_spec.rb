require 'rails_helper'
require 'pundit/rspec'

describe 'ClientPolicy' do

  it 'should Set a policy for a client' do

    true.should == false
  end
end


  subject { ClientPolicy }

  let (:current_user) { FactoryGirl.build_stubbed :user }
  let (:other_user) { FactoryGirl.build_stubbed :user }
  let (:ogx_admin) { FactoryGirl.build_stubbed :user, :ogx_admin }
  let (:admin) { FactoryGirl.build_stubbed :user, :admin }

  permissions :index? do
    it "denies access if not an admin or ogx_admin" do
      expect(UserPolicy).not_to permit(current_user)
    end
    it "allows access for an admin" do
      expect(UserPolicy).to permit(admin)
    end
    it "allows access for an ogx_admin" do
      expect(UserPolicy).to permit(ogx_admin)
    end
  end

  permissions :show? do
    it "prevents other users from seeing your profile" do
      expect(subject).not_to permit(current_user, other_user)
    end
    it "allows you to see your own profile" do
      expect(subject).to permit(current_user, current_user)
    end
    it "allows an admin to see any profile" do
      expect(subject).to permit(admin)
    end
    it "allows an ogx_admin to see any profile" do
      expect(subject).to permit(ogx_admin)
    end
  end

  permissions :update? do
    it "prevents updates if not an ogx_admin" do
      expect(subject).not_to permit(current_user)
    end
    it "prevents updates if an admin" do
      expect(subject).not_to permit(admin)
    end
    it "allows an ogx_admin to make updates" do
      expect(subject).to permit(ogx_admin)
    end
  end

  permissions :destroy? do
    it "prevents deleting yourself" do
      expect(subject).not_to permit(current_user, current_user)
    end
    it "prevents admin from deleting user" do
      expect(subject).not_to permit(admin)
    end
    it "allows an ogx_admin to delete any user" do
      expect(subject).to permit(ogx_admin, other_user)
    end
  end

end



