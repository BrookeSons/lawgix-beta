class AddJoinTableForTitleAbstractsUsersRedo < ActiveRecord::Migration
  def change
   create_table :users_title_abstracts, id: false do |t|
      t.belongs_to :users, index: true
      t.belongs_to :title_abstracts, index:true
     end
  end
end
