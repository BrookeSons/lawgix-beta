class AddTitleAbstractReferenceToDeeds < ActiveRecord::Migration
  def change
    add_reference :deeds, :title_abstracts, index: true
  end
end
