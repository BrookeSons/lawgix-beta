class CreateLeaseProvisons < ActiveRecord::Migration
  def change
    create_table :lease_provisons do |t|
      t.string :provision
      t.timestamps 
    end
  end
end
