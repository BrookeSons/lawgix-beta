class CreateServiceRequests < ActiveRecord::Migration
  def change
    create_table :service_requests do |t|
      t.string :to_state, null: false
      t.text :metadata
      t.integer :sort_key, null: false
      t.integer :service_id, null: false
      t.timestamps
    end

    add_index :service_requests, :service_id
    add_index :service_requests, [:sort_key, :service_id], unique: true
  end
end
