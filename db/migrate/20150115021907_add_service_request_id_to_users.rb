class AddServiceRequestIdToUsers < ActiveRecord::Migration
  def change
   add_column :service_requests , :user_id, :integer

   add_index :service_requests, :user_id
   add_index :service_requests, [:sort_key, :user_id], unique: true

  end
end
