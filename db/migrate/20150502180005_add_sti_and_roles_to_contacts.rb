class AddStiAndRolesToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :type, :string
    add_column :contacts, :role, :string
  end
end
