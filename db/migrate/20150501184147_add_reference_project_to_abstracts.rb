class AddReferenceProjectToAbstracts < ActiveRecord::Migration
  def change
    add_reference :title_abstracts, :project, index: true
  end
end
