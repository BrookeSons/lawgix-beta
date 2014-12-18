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
        state: params[:service][:state],
        county: params[:service][:county],
        last_name: params[:service][:lessees] || "") 
    @action.create
    redirect_to services_path
  end

end
