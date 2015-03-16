class RenameDocumentsColumnFromDocumentToDoc < ActiveRecord::Migration
  def change
    rename_column :documents, :document, :doc
  end
end
