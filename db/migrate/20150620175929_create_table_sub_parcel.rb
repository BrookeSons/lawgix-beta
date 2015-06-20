class CreateTableSubParcel < ActiveRecord::Migration
  def change
    create_table :sub_parcels do |t|
      t.string :parcel_type
      t.string :parcel_ref
      t.integer :acreage

      t.timestamps
    end
  end
end
