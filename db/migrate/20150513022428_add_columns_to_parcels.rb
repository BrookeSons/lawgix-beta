class AddColumnsToParcels < ActiveRecord::Migration
  def change
    add_column :parcels, :surface_owner, :string
    add_column :parcels, :og_fee_owner,  :string
    add_column :parcels, :acres,         :decimal
    add_column :parcels, :og_fee_acres,    :decimal
    add_column :parcels, :og_leased_acres, :decimal
  end
end
