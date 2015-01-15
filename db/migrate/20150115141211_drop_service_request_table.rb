class DropServiceRequestTable < ActiveRecord::Migration
  def change
    drop_table :service_requests
  end
end
