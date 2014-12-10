class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :county
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :phone_name
      t.string :email
      t.string :type

      t.timestamps
    end

    def down
      drop_table :contacts
    end
  end
end
