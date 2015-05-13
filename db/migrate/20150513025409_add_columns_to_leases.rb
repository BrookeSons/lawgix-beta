class AddColumnsToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :begin_station, :string
    add_column :leases, :end_station, :string
  end
end
