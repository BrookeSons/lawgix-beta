class AddReferenceProjectToService < ActiveRecord::Migration
  def change
    add_reference :services, :project, index: true
  end
end
