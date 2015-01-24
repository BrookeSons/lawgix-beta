class RemoveIdsFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :flow_id
    remove_column :services, :lease_id 
    remove_column  :services, :lessee_id
    remove_column  :services, :parcel_id 
  end
end
