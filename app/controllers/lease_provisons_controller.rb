class LeaseProvisonsController < ApplicationController


  def new
    @provision = LeaseProvison.new
  end

  def show
    @provison = LeaseProvison.find(params[:id])
    # authorize @company
  end

  def index
    @provisons = LeaseProvison.all
  end

  def create
    @provison = LeaseProvison.new(secure_params)
    @LeaseProvison.save
    redirect_to lease_path(@provison.lease)
  end

  def update
    @provison = LeaseProvison.find(params[:id])

    if @provison.update_attributes(secure_params)
      redirect_to lease_path(@provison.lease), :notice => "Contact updated."
    else
      redirect_to lease_path(@provision.lease), :alert => "Unable to update Contact."
    end
  end

  
  def destroy
    @provison = LeaseProvison.find(params[:id])
    # authorize User
    @provison.destroy
    redirect_to lease_path(@provison.lease), :notice => "User deleted."
  end

  private

  def secure_params
    params.require(:lease_provison).permit!
  end

end
 
