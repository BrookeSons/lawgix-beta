class AddReferenceProjectToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :project, index: true 
  end
end
