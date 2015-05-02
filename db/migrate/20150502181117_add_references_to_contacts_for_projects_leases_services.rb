class AddReferencesToContactsForProjectsLeasesServices < ActiveRecord::Migration
  def change
    add_reference :contacts, :lease,   index: true
    add_reference :contacts, :service, index: true
  end
end
