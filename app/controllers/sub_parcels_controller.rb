
class SubParcelsController < ApplicationController


  def new
    @sub_parcel  = SubParcel.new
    @sub_parcel.owners.build
  end

  def show
    @sub_parcel = SubParcel.find(params[:id])
    # authorize @company
  end

  def index
    @sub_parcels = SubParcel.all
  end

  def update
    @sub_parcel = SubParcel.find(params[:id])

    if @sub_parcel.update_attributes(secure_params)
      redirect_to projects_path, :notice => "Subparcel updated."
    else
      redirect_to projects_path, :alert => "Unable to update Sub Parcel."
    end
  end

  def create
    @sub_parcel = SubParcel.new(secure_params)
    if @sub_parcel.validate(params[:sub_parcel])
      @sub_parcel.save
      redirect_to project_path(@contact.project)
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:sub_parcel).permit!
  end



end
