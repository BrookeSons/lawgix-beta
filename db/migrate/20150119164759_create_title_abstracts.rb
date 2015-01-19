class CreateTitleAbstracts < ActiveRecord::Migration
  def change
    create_table :title_abstracts do |t|
      t.string :name
      t.date :due_date
      t.text :comments

      t.timestamps null: false
    end
  end
end
