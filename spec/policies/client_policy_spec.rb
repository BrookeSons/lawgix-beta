require 'rails_helper'
require 'pundit/rspec'

describe ClientPolicy do

  subject { ClientPolicy }

  let (:current_user) { FactoryGirl.build_stubbed :user }
  let (:other_user) { FactoryGirl.build_stubbed :user }
  let (:lawgix) { FactoryGirl.build_stubbed :user, :lawgix }
  let (:employee) {FactoryGirl.build_stubbed :user, :lawgix}

  permissions :index? do
    it "denies access if not lawgix" do
      expect(UserPolicy).not_to permit(current_user)
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
    it "allows lawgix to see any profile" do
      expect(subject).to permit(lawgix)
    end
  end

  permissions :update? do
    it "prevents other users from updating your profile" do
      expect(subject).not_to permit(current_user, other_user)
    end
    it "allows you to update your own profile" do
      expect(subject).to permit(current_user, current_user)
    end
    it "allows a lawgix to update any profile" do
      expect(subject).to permit(lawgix)
    end

  end

  permissions :destroy? do
    it "prevents deleting yourself" do
      expect(subject).not_to permit(current_user, current_user)
    end
    it "allows lawgix to delete any user" do
      expect(subject).to permit(lawgix, other_user)
    end
  end

  permissions :new? do
    it "allows lawgix to create a new user" do
      expect(subject).to permit(lawgix)
    end
  end
end


