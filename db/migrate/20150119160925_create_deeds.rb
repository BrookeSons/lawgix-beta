class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.string :db
      t.string :db_page
      t.date :d_date
      t.string :grantor
      t.string :grantee
      t.string :d_type
      t.text :comments
      t.string :d_image

      t.timestamps null: false
    end
  end
end
