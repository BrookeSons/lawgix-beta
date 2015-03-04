class AddJoinTableForTitleAbstractsDeeds < ActiveRecord::Migration
  def change
   create_table :deeds_abstracts, id: false do |t|
      t.belongs_to :deeds, index: true
      t.belongs_to :title_abstracts, index:true
     end
  end
end
