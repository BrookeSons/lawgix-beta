class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.first_name, :string
      t.last_name, :string
      t.street_address, :string
      t.county, :string
      t.city, :string
      t.state, :string
      t.zip, :string
      t.phone, :string
      t.phone_name, :string
      t.email, :string
      t.type, :string
      t.company_id :integer

      t.timestamps
    end

    def down
      drop_table :contacts
    end
  end
end
