class AddLeaseReferenceToLessees < ActiveRecord::Migration
  def change
    add_reference :lessees, :lease, index: true
  end
end
