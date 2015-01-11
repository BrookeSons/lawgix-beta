class AddLawyerAssociationToLawfirms < ActiveRecord::Migration
  def change
    add_column :users, :lawfirm_id, :integer
    add_index  :users, :lawfirm_id
  end
end
