class LeasesController < ApplicationController
  # before_filter :authenticate_user!

  def new
    @lease   = Lease.new
    @project = Project.find(params[:project])
    if @project
      @lease.project = @project
    end
    @lease.lessors.build
    @lease.parcels.build
    @lease.documents.build
    @lease.lease_provisons.build
  end

  def show
    @lease     = Lease.find(params[:id])
    @documents = @lease.documents
    # authorize @company
  end

  def index
    @leases = Lease.all.paginate(page: params[:page], per_page: 8)
  end

  def create
    @lease = Lease.new(lease_params)
    @lease.save

    if @lease.lessors
      @project = @lease.project
      @lease.lessors.each do |lessor|
        @project.lessors << lessor
      end
    end

    if @lease.parcels
      @project = @lease.project
      @lease.parcels.each do |parcel|
        @project.parcels << parcel
      end
    end


       @project.save

    redirect_to project_path(@lease.project)
  end
 
  def update
    @lease = Lease.find(params[:id])
    if @lease.lessors
      @project = @lease.project
      @lease.lessors.each do |lessor|
        @project.lessors << lessor
      end
    end

    if @lease.parcels
      @project = @lease.project
      @lease.parcels.each do |parcel|
        @project.parcels << parcel
      end
    end
    if @lease.update_attributes(lease_params)
      redirect_to project_path(@lease.project), :notice => "Lease updated."
    else
      redirect_to project_path(@lease.project),  :alert => "Unable to update Lease."
    end
  end

  private

  def lease_params
    params.require(:lease).permit!
  end

end
