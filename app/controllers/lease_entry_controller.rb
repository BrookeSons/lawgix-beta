class LeaseEntryController < ApplicationController
  include Wicked::Wizard
  steps :ownership, :location, :implementation
end
