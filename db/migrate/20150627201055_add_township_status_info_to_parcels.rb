class AddTownshipStatusInfoToParcels < ActiveRecord::Migration
  def change
    add_column :parcels, :tshp, :string
    add_column :parcels, :walked, :boolean
    add_column :parcels, :staked, :boolean
    add_column :parcels, :row_status, :string
    add_column :parcels, :row_ft, :integer
    add_column :parcels, :row_date,:date
  end
end
