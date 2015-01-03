class ServicesController < ApplicationController


  def new
    @service = Service.new
    @service.lessees.build
    @service.flows.build
  end

  def show
    @service = Service.find(params[:id])
    # authorize @user
  end

  def index
    @services = Service.all
  end

  def create
    @service = Service.new(secure_params)
    @service.save

       redirect_to services_path
  end

  private

  def secure_params
    params.require(:service).permit(:lease_number,:state, :county, :description, :flows, :requested_delivery,
                                    lessees_attributes: [:last_name, :first_name, 
                                    :address, :city, :state, :zip,
                                    :phone, :email, :company, :bus_phone],
                                    flows_attributes: [:flow_type],
                                    parcels_attributes: [:tax_map, :tax_parcel, :deed_id ])
  end

  def req_params
    params.require(:service_request).permit(:to_state)
  end
end

