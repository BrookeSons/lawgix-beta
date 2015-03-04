class FixMessFromMisNamedJoinTables < ActiveRecord::Migration
  def change
    drop_table :users_abstracts
    drop_table  :deeds_abstracts
    drop_table  :deeds__title_abstracts
    drop_table  :parcels_abstracts 
  end
end
