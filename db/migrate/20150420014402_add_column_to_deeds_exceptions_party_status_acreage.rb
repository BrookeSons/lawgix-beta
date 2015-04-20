class AddColumnToDeedsExceptionsPartyStatusAcreage < ActiveRecord::Migration
  def change
    add_column :deeds, :exceptions, :string
    add_column :deeds, :gtor_status, :string
    add_column :deeds, :gtee_status, :string
    add_column :deeds, :acreage, :string
    add_column :deeds, :description, :string
  end
end
