class AddDescriptionToService < ActiveRecord::Migration
  def change
    add_column :services, :description, :string
  end
end
