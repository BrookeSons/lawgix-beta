class AddColumnCountyToParcels < ActiveRecord::Migration
  def change
    add_column :parcels, :county, :string
  end
end
