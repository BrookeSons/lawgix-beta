class AddServiceIdToService < ActiveRecord::Migration
  def change
    add_column :services,  :service_id, :integer 
  end
end
