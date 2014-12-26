class ServicesController < ApplicationController

  def new
    @service = ServiceCreator.new
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
  end

  def index
    @services = Service.all
  end

  def create

    @service = ServiceCreator.new(service_params)
     if @service.save
       redirect_to services_path
     else
       render :new
     end
  end 

  def service_params
    params.require(:service_creator).permit!
  end

end
