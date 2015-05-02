class AddCompanyAndPhonesToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :company, :string
    add_column :contacts, :bus_phone, :string
  end
end
