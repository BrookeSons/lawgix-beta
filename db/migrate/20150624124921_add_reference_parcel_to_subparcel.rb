class AddReferenceParcelToSubparcel < ActiveRecord::Migration
  def change
    add_reference :sub_parcels, :parcel, index: true
  end
end
