class ServiceCreator

  include Virtus.model
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_reader :service
  attr_reader :lessee
  attr_reader :flow
  attr_reader :parcel

attribute :lease_number, String
attribute :state, String
attribute :county, String
attribute :description, String
attribute :requested_delivery, String
attribute :last_name, String
attribute :first_name, String
attribute :lessee, Lessee
attribute :parcel, Parcel
attribute :flow, Flow


  def persisted?
    false
  end

  def save
    if valid?
      persist!
      true
    else
      false
    end
  end

  private

  def persist!
    @service = Service.create!(lease_number: lease_number, state: state,  county: county, 
                         description: description, requested_delivery: requested_delivery)

     @lessee = @service.lessees.create!(last_name: last_name, first_name: first_name)
  end

end
