class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :file_type
      t.string :document_path
      t.string :url
      t.integer :user_id
      t.integer :service_id
      t.integer :lease_id

      t.timestamps null: false
    end
  end
end
