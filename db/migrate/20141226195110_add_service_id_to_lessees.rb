class AddServiceIdToLessees < ActiveRecord::Migration
  def change
    add_column  :lessees, :service_id, :integer   
  end
end
