class AddTitleAbstractRerenceToDocuments < ActiveRecord::Migration
  def change
     add_reference :documents, :title_abstract, index: true
  end
end
