class DropTableUsersServices < ActiveRecord::Migration
  def change
    drop_table :users_services
  end
end
