class AddReferenceProjectToLease < ActiveRecord::Migration
  def change
    add_reference :leases, :project, index: true
  end
end
