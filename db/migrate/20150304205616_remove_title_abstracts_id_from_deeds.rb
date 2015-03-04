class RemoveTitleAbstractsIdFromDeeds < ActiveRecord::Migration
  def change
    remove_column :deeds, :title_abstracts_id
  end
end
