class RemoveStringsAddAssocToServices < ActiveRecord::Migration
  def up
    remove_column :services, :lease_number 
    remove_column :services, :lessee_first_name
    remove_column :services, :lessee_last_name
    add_column :services, :lease_id, :integer
    add_column :services, :lessee_id, :integer
    add_column :services, :flow_type, :integer
  end

  def down
    add_column :services, :lease_number 
    add_column :services, :lessee_first_name
    add_column :services, :lessee_last_name
    remove_column :services, :lease_id, :integer
    remove_column :services, :lessee_id, :integer
    remove_column :services, :flow_type, :integer
  end
end
