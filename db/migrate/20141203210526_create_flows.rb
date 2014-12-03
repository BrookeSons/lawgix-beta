class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.string :flow_type
      t.string :assignee
      t.date :received_at
      t.date :completed_at

      t.timestamps
    end
  end
end
