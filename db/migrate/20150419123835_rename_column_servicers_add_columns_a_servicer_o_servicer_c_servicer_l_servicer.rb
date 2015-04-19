class RenameColumnServicersAddColumnsAServicerOServicerCServicerLServicer < ActiveRecord::Migration
  def change
    rename_column :services, :servicer, :a_servicer
    add_column    :services, :o_servicer, :string
    add_column    :services, :c_servicer, :string
    add_column    :services, :l_servicer, :string
  end
end
