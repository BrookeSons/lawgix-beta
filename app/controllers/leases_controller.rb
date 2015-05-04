class LeasesController < ApplicationController
  # before_filter :authenticate_user!

  def new
    @lease = Lease.new
    @lease.lessors.build
    @lease.parcels.build
    @lease.documents.build
  end

  def show
    @lease = Lease.find(params[:id])
    @documents = @lease.documents
    # authorize @company
  end

  def index
    @leases =  Lease.all.paginate(page: params[:page], per_page: 8)
  end

  def create
    @lease = Lease.new(lease_params)
    @lease.save
    redirect_to projects_path
  end

  def update
    @lease = Lease.find(params[:id])
    if @lease.update_attributes(lease_params)
      redirect_to leases_path, :notice => "Lease updated."
    else
      redirect_to leases_path, :alert => "Unable to update Lease."
    end
  end
  private

  def lease_params
    params.require(:lease).permit!
  end
end
