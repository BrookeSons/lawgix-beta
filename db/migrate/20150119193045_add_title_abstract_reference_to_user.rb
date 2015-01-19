class AddTitleAbstractReferenceToUser < ActiveRecord::Migration
  def change
    add_reference :users, :title_abstract, index: true
  end
end
