class ServicesController < ApplicationController


  def new
    @service = Service.new
  end


  def index
    @services = Service.all
  end

  def create
    @action = ServiceCreator.new(
        lease_number: params[:service][:lease_number],
        flow_string: params[:service] [:flows])
    @action.create
    redirect_to_services_path
  end


end
