class AddServiceReferenceToTitleAbstract < ActiveRecord::Migration
  def change
    add_reference :title_abstracts, :service, index: true
  end
end
