class DropColumnParcelIdFromService < ActiveRecord::Migration
  def up
    remove_column :services ,:parcel_id
  end
end
