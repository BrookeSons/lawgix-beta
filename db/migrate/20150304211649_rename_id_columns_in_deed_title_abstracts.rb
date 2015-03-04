class RenameIdColumnsInDeedTitleAbstracts < ActiveRecord::Migration
  def change
    rename_column :deed_title_abstracts, :deeds_id, :deed_id
    rename_column :deed_title_abstracts, :title_abstracts_id, :title_abstract_id
  end
end
