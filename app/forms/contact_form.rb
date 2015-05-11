class ContactForm < Reform::Form

  model :contact

  properties :first_name, :last_name, :company, :address, :city, :state,
             :zip, :phone, :bus_phone, :email, :project_id,
             :type, :role, :lease_id, :service_id

end
