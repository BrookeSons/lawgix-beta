class AddColumnsCountyStateStartDateEndDateToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :county, :string
    add_column :leases, :state, :string
    add_column :leases, :start_date, :datetime
    add_column :leases, :end_date, :datetime
  end
end
