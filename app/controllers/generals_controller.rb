
class GeneralsController < ApplicationController

  # before_filter :authenticate_user!

  def new
    @general = General.new
  end

  def show
    @general = General.find(params[:id])
    # authorize @company
  end

  def index
    @generals =  General.all
  end

  def create
    @general = General.new(secure_params)
    @general.save
    redirect_to projects_path
  end

  def update
    @general = General.find(params[:general_id])

    if @general.update_attributes(secure_params)
      redirect_to projects_path, :notice => "Contact updated."
    else
      redirect_to projects_path, :alert => "Unable to update Contact."
    end
  end

  private

  def secure_params
    params.require(:general).permit(:first_name, :last_name, :company, :bus_phone, :address, :service_id, :lease_id, :project_id,:name, :city, :state, :zip, :phone, :email)
  end
end
