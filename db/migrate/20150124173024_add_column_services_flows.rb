class AddColumnServicesFlows < ActiveRecord::Migration
  def change
    add_column :services, :flows, :string
  end
end
