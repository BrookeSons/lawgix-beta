class AddSurfaceAcresBonusToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :surface_acres, :integer
    add_column :leases, :surface_bonus, :decimal, precision: 8, scale: 2
  end
end
