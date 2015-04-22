class AddLeaseReferenceToParcels < ActiveRecord::Migration
  def change
    add_reference :parcels, :lease, index: true
  end
end
