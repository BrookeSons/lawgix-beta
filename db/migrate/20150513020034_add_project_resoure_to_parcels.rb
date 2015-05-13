class AddProjectResoureToParcels < ActiveRecord::Migration
  def change
    add_reference :parcels, :project, index: true
  end
end
