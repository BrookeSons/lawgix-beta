class AddTitleAbstractReferenceToDeeds < ActiveRecord::Migration
  def change
    add_reference :deeds, :title_abstract, index: true
  end
end
