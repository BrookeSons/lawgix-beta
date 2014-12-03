class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :lease_number
      t.string :lesee_first_name
      t.string :lessee_last_name
      t.string :county
      t.string :parcel_id
      t.date :start_date
      t.date :end_date
      t.date :requested_delivery
      t.string :lease_file

      t.timestamps
    end
  end
end
