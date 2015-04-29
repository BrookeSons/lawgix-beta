class AddPolymorphicToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_chunk_id, :integer
    add_column :projects, :project_chunk_type, :string
  end
end
