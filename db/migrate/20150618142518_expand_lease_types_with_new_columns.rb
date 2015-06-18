class ExpandLeaseTypesWithNewColumns < ActiveRecord::Migration
  def change
    add_column :leases, :ogl,      :boolean
    add_column :leases, :surface,  :boolean
    add_column :leases, :pipeline, :boolean
    add_column :leases, :ogl_rate, :integer
    add_column :leases, :ogl_acres, :integer
    add_column :leases, :ogl_bonus, :decimal, precision: 8, scale: 2
    add_column :leases, :pipeline_acres, :integer
    add_column :leases, :pipeline_bonus, :decimal, precision: 8, scale: 2
  end
end
