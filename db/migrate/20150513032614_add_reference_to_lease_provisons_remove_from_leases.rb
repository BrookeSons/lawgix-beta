class AddReferenceToLeaseProvisonsRemoveFromLeases < ActiveRecord::Migration
  def change
    add_reference :lease_provisons, :lease, index: true
    remove_column :leases, :lease_provison_id
  end
end
