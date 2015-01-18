class AddStateIndexToServices < ActiveRecord::Migration
  def change
    add_index :services, :state
  end
end
