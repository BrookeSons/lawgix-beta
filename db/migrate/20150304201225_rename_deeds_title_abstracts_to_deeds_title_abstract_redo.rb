class RenameDeedsTitleAbstractsToDeedsTitleAbstractRedo < ActiveRecord::Migration
  def change
    rename_table :deeds_title_abstracts, :deed_title_abstract
  end
end
