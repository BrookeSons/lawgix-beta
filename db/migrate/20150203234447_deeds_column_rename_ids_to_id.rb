class DeedsColumnRenameIdsToId < ActiveRecord::Migration
  def change
    rename_column :deeds, :title_abstracts_id, :title_abstract_id
    rename_index :deeds, :title_abstracts_id, :title_abstract_id
  end
end
