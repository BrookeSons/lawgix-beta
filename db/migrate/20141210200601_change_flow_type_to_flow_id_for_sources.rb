class ChangeFlowTypeToFlowIdForSources < ActiveRecord::Migration
  def up
    rename_column :services, :flow_type, :flow_id
  end

 def down
  rename_column :services, :flow_id, :flow_type
 end


end
