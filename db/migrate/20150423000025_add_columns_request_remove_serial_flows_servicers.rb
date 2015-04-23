class AddColumnsRequestRemoveSerialFlowsServicers < ActiveRecord::Migration
  def change
    add_column :services, :request, :string
    add_column :services, :servicer, :string
    remove_column :services, :serial_flows
    remove_column :services, :a_servicer
    remove_column :services, :o_servicer
    remove_column :services, :l_servicer
    remove_column :services, :c_servicer
  end
end
