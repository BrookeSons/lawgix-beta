class RenameUsersTitleAbstrastTitleAbstractUsers < ActiveRecord::Migration
  def change
    rename_table :users_title_abstracts, :title_abstracts_users
  end
end
