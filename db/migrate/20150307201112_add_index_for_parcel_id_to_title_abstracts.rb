class AddIndexForParcelIdToTitleAbstracts < ActiveRecord::Migration
  def change
    add_index :title_abstracts, :parcel_id
  end
end
