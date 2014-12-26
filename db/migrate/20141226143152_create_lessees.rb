class CreateLessees < ActiveRecord::Migration
  def change
    create_table :lessees do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :company
      t.string :bus_phone

      t.timestamps null: false
    end
  end
end
