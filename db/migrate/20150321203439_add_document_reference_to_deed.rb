class AddDocumentReferenceToDeed < ActiveRecord::Migration
  def change
    add_reference :documents, :deed, index: true
  end
end
