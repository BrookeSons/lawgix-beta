class CreateParcels < ActiveRecord::Migration
  def change
    create_table :parcels do |t|
      t.string :tax_map
      t.string :tax_parcel
      t.integer :deed_id

      t.timestamps
    end
  end
end
