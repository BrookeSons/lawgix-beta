class ServicersController < ApplicationController

  def new
    @servicer = Servicer.new
  end

  def show
    @servicer = Servicer.find(params[:id])
    # authorize @company
  end

  def index
    @servicer =  Servicer.all
  end

  def create
    @servicer = Servicer.new(secure_params)
    @servicer.save
    
    redirect_to servicers_path
  end

  private

  def secure_params
    params.require(:servicer).permit!
  end
end
