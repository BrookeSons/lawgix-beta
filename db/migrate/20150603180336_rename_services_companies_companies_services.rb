class RenameServicesCompaniesCompaniesServices < ActiveRecord::Migration
  def change
    rename_table :services_companies, :companies_services
  end
end
