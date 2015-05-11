class AddSrNameToService < ActiveRecord::Migration
  def change
    add_column :services, :sr_name, :string
  end
end
