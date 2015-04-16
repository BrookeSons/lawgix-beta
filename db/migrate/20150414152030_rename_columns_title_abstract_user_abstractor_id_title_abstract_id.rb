class RenameColumnsTitleAbstractUserAbstractorIdTitleAbstractId < ActiveRecord::Migration
  def change
    rename_column :title_abstracts_users, :users_id, :abstractor_id
    rename_column :title_abstracts_users, :title_abstracts_id, :title_abstract_id
  end
end
