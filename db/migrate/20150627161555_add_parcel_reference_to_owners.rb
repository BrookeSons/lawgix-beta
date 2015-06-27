class AddParcelReferenceToOwners < ActiveRecord::Migration
  def change
    add_reference :contacts, :parcel , index: true 
  end
end
