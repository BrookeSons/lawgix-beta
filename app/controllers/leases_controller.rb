class LeasesController < ApplicationController
  # before_filter :authenticate_user!

  def new
    @lease = Lease.new
  end

  def show
    @lease = Lease.find(params[:id])
    # authorize @company
  end

  def index
    @leases =  Lease.all
  end

  def create
    @lease = Lease.new(secure_params)
    @lease.save
    redirect_to leases_path
  end

  private

  def secure_params
    params.require(:lease).permit(:lease_number, :description, :comments, :password, :name, :city, :state, :zip, :phone, :email)
  end
end
