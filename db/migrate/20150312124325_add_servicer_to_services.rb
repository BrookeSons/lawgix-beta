class AddServicerToServices < ActiveRecord::Migration
  def change
    add_column :services, :servicer, :string
  end
end
