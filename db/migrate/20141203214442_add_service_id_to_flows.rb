class AddServiceIdToFlows < ActiveRecord::Migration
  def change
  add_reference :flows, :service, index: true   
  end
end
