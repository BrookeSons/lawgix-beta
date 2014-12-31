class CreatUsersAndServices < ActiveRecord::Migration
  def change

    create_table :users_services, id: false do |t|
    t.belongs_to :service, index: true
    t.belongs_to :user, index:true

    end
  end
end
