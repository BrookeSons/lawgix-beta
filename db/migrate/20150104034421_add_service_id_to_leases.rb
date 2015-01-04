class AddServiceIdToLeases < ActiveRecord::Migration
  def change
    add_reference :leases,:service , index: true 
  end
end
