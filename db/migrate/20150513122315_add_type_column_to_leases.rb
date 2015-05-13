class AddTypeColumnToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :type, :string
  end
end
