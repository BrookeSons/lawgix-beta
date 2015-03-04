class AddJoinTableForTitleAbstractsParcels < ActiveRecord::Migration
  def change
   create_table :parcels_abstracts, id: false do |t|
      t.belongs_to :parcels, index: true
      t.belongs_to :title_abstracts, index:true
     end
  end
end
