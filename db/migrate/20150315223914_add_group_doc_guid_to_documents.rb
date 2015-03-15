class AddGroupDocGuidToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :groupdocs_guid, :string
    add_column :documents, :groupdocs_thumbnail, :text
  end
end
