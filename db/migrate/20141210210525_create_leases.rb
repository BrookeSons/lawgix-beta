class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.string :lease_number
      t.integer :lessee
      t.string :description
      t.text :comments
      t.integer :user_id

      t.timestamps
    end
  end
end
