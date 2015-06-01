class LeaseProvisonsController < ApplicationController


  def new
    @provision = LeaseProvison.new
  end

  def show
    @parcel = Parcel.find(params[:id])
    # authorize @company
  end

  def index
    @parcels = Parcel.all
  end

  def create
    @parcel = Parcel.new(secure_params)
    @parcel.save
    redirect_to project_path(@parcel.project)
  end

  private

  def secure_params
    params.require(:parcel).permit!
  end

end