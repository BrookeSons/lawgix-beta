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
        description:  params[:service][:description],
        requested_delivery: params[:service][:requested_delivery],
        lessees: params[:service][:lessees]
        )

    @action.create
    redirect_to services_path
  end

  private

  def lessees
    Lessee.new(last_name: last_name, first_name: first_name)
  end

end
