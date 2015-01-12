class ServicesController < ApplicationController


  def new
    @service = Service.new
    @service.lessees.build
    @service.parcels.build
    @service.flows.build
  end

  def show
    @service = Service.find(params[:id])
    # authorize @user
  end

  def index
    @services = Service.all.paginate(page: params[:page], per_page: 8)
  end

  def create
    @service = Service.new(secure_params)
    @service.save

       redirect_to services_path
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(secure_params)
      redirect_to services_path, :notice => "Service Request updated."
    else
      redirect_to services_path, :alert => "Unable to update Service Request."
    end
  end

  private

  def secure_params
    params.require(:service).permit(:lease_number,:state, :county, :description,
                                    :requested_delivery, :flows,
                                    lessees_attributes: [:last_name, :first_name, 
                                    :address, :city, :state, :zip,
                                    :phone, :email, :company, :bus_phone, :id],
                                    flows_attributes: [:flow_type],
                                    parcels_attributes: [:tax_map, :tax_parcel, :deed_id,:id])
  end

  def req_params
    params.require(:service_request).permit(:to_state)
  end
end

