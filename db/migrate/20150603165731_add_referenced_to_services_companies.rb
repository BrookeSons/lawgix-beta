class AddReferencedToServicesCompanies < ActiveRecord::Migration
  def change
    add_column :services_companies, :service_id, :string
    add_column :services_companies, :company_id, :string
  end
end
 
