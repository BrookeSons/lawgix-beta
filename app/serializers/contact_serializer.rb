class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip, :phone, :email
end