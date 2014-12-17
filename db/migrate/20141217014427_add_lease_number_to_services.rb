class AddLeaseNumberToServices < ActiveRecord::Migration
  def change
    add_column :services, :lease_number, :string  
  end
end
