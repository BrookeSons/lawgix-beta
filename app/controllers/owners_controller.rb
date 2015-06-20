
class OwnersController < ApplicationController

  # before_filter :authenticate_user!

  def new
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
    # authorize @company
  end

  def index
    @owners =  Owner.all
  end

  def create 

    @owner = Owner.new(secure_params)
    @owner.save
    redirect_to s_path
  end

  def update
    @lessor = Owner.find(params[:id])

    if @lessor.update_attributes(secure_params)
      redirect_to projects_path, :notice => "Owner updated."
    else
      redirect_to projects_path, :alert => "Unable to update Owner."
    end
  end

  private

  def secure_params
    params.require(:lessor).permit(:first_name, :last_name, :service_id, :lease_id, :project_id,:name, :city, :state, :zip, :phone, :email)
  end
end
