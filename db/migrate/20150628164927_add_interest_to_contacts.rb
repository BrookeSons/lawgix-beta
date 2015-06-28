class AddInterestToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :interest, :string
  end
end
