class AddColumnDescriptionToTitleAbstracts < ActiveRecord::Migration
  def change
    add_column :title_abstracts, :description, :string
  end
end
