class UserDocumentsJoinTable < ActiveRecord::Migration
  def change
    create_table :user_documents, id: false do |t|
      t.belongs_to :document, index: true
      t.belongs_to :user, index: true
    end
  end
end
