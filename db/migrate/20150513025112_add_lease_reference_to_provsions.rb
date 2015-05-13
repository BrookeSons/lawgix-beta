class AddLeaseReferenceToProvsions < ActiveRecord::Migration
  def change
    add_reference :leases, :lease_provison, index: true
  end
end
