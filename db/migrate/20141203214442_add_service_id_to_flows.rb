class AddServiceIdToFlows < ActiveRecord::Migration
  def change
    add_column :service_id, :integer
    add_index :service_id
  end
end
