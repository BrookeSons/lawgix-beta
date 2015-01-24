class RenameFlowsSerialFlows < ActiveRecord::Migration
  def change
    rename_column :services, :flows, :serial_flows
  end
end
