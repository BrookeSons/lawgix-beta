class AddDocTypeDocCommentFileNameToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :file_name, :string
    add_column :documents, :doc_type, :string
    add_column :documents, :doc_comment, :text
  end
end
