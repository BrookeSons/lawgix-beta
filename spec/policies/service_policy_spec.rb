
require 'rails_helper'
require 'pundit/rspec'

describe ServicePolicy do

  it 'should Set a policy for a client' do


    subject { ServicePolicy }

    let (:current_user) { FactoryGirl.build_stubbed :user }
    let (:other_user) { FactoryGirl.build_stubbed :user }
    let (:lawgix) { FactoryGirl.build_stubbed :user, :lawgix }
    let (:employee) {FactoryGirl.build_stubbed :user, :employee}

    permissions :index? do
      it "denies access if not a client" do
        expect(UserPolicy).not_to permit(current_user)
      end
      it "allows access for client in a company" do
        expect(UserPolicy).to permit(employee,customer)
      end
      it "allows access for lawgix" do
        expect(UserPolicy).to permit(lawgix)
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
      it "allows an lawgix to see any profile" do
        expect(subject).to permit(lawgix)
      end
    end

    permissions :update? do
      it "prevents updates if not an lawgix" do
        expect(subject).not_to permit(current_user)
      end
      it "prevents updates if an admin" do
        expect(subject).not_to permit(admin)
      end
      it "allows an lawgix to make updates" do
        expect(subject).to permit(lawgix)
      end
    end

    permissions :destroy? do
      it "prevents deleting yourself" do
        expect(subject).not_to permit(current_user, current_user)
      end
      it "prevents admin from deleting user" do
        expect(subject).not_to permit(admin)
      end
      it "allows an lawgix to delete any user" do
        expect(subject).to permit(lawgix, other_user)
      end
    end
  end
end





