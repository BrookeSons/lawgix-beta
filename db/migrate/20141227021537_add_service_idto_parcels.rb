class AddServiceIdtoParcels < ActiveRecord::Migration
  def change
    add_column :parcels, :service_id, :integer
  end
end
