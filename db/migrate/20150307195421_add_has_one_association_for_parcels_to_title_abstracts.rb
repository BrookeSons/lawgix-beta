class AddHasOneAssociationForParcelsToTitleAbstracts < ActiveRecord::Migration
  def change
    add_column :title_abstracts, :parcel_id, :integer
  end
end
