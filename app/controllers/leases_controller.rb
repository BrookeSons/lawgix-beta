class LeasesController < ApplicationController
  # before_filter :authenticate_user!

  def new
    @lease = Lease.new
    @lease.lessees.build
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
    redirect_to leases_path
  end

  private

  def lease_params
    params.require(:lease).permit!
  end
end
