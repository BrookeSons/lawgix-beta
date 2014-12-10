class ServicesController < ApplicationController


  def new
    @service = Service.new
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
  end

  def index
    @services = Service.all
  end

  def create
    @action = ServiceCreator.new(
        lease_number: params[:service][:lease_number],
        lessee_last_name: params[:service][:lessee_last_name],
        flow_string: params[:service] [:flows])
    @action.create
    redirect_to services_path
  end

end
