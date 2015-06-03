class AddIndexToServiceCompanies < ActiveRecord::Migration
  def change
    add_index :services_companies, :service_id
    add_index :services_companies, :company_id
  end
end
