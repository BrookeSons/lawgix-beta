class ParcelsController < ApplicationController

  def new
    @parcel = Parcel.new
    @project = Project.find(params[:project])
    if @project
      @parcel.project = @project
    end 
    @parcel.owners.build 
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
    if @parcel.owners
      @project = @parcel.project
      @parcel.owners.each do |owner|
        @project.owners << owner
      end
    end
    
    @parcel.save
    redirect_to project_path(@parcel.project)
  end

  def update
    @parcel = Parcel.find(params[:id])
    if @parcel.update_attributes(secure_params)
      redirect_to project_path(@parcel.project), :notice => "Parcel updated."
    else
      redirect_to project_path(@parcel.project), :alert => "Unable to update Parcel."
    end
  end

  private

  def secure_params
    params.require(:parcel).permit!
  end


end
