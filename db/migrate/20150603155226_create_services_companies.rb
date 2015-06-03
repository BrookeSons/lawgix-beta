class CreateServicesCompanies < ActiveRecord::Migration
  def change
    create_table :services_companies do |t|
      def self.up
        create_table :services_companies, :id => false do |t|
          t.references :company
          t.references :service
        end
        
        add_index :services_companies, [:service_id, :company_id]
        add_index :services_companies, :company_id
      end

      def self.down
        drop_table :services_companies
      end
    end
  end
end
