class CreateLawfirms < ActiveRecord::Migration
  def change
    create_table :lawfirms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end