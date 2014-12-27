class ServicesController < ApplicationController


  def new
    @service = Service.new
    @service.lessees.build
    @service.flows.build
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
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
    params.require(:service).permit(:lease_number,  :state, :county, :description, :requested_delivery,
                                    lessees_attributes: [:last_name, :first_name], flows_attributes: [:flow_type] )  

  end

end

