class ParcelsController < ApplicationController

  def new
    @parcel = Parcel.new
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

    redirect_to parcels_path
  end

  private

  def secure_params
    params.require(:parcel).permit(:tax_map, :tax_parcel)
  end


end
