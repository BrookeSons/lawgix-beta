class RenameDeedsTitleAbstractsToDeedsTitleAbstractfix < ActiveRecord::Migration
  def change
    rename_table :deed_title_abstract, :deed_title_abstracts
  end
end
