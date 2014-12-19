class AddServiceIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :service_id, :integer
  end
end
