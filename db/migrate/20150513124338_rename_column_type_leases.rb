class RenameColumnTypeLeases < ActiveRecord::Migration
  def change
    rename_column :leases, :type, :lease_type
  end
end
