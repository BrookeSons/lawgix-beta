class AddParcelIdToServices < ActiveRecord::Migration
  def change
  add_column :services, :parcel_id, :integer

  end
end
