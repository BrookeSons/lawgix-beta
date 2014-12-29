class RemoveServiceIdFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :service_id
  end
end
