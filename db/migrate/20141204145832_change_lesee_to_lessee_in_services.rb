class ChangeLeseeToLesseeInServices < ActiveRecord::Migration
  def change
    rename_column :services, :lesee_first_name, :lessee_first_name
  end
end
