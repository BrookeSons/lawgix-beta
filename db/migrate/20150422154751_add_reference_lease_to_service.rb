class AddReferenceLeaseToService < ActiveRecord::Migration
  def change
    add_reference :services, :lease, index: true
  end
end
