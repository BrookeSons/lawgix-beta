class LessorsController < ApplicationController

  # before_filter :authenticate_user!

  def new
    @lessor = Lessor.new
  end

  def show
    @lessor = Lessor.find(params[:id])
    # authorize @company
  end

  def index
    @lessors =  Lessor.all
  end

  def create
    @lessor = Lessor.new(secure_params)
    @lessor.save
    redirect_to lessors_path
  end

  def update
    @lessor = Lessor.find(params[:lessor_id])

    if @lessor.update_attributes(secure_params)
      redirect_to projects_path, :notice => "Lessor updated."
    else
      redirect_to projects_path, :alert => "Unable to update Lessor."
    end
  end

  private

  def secure_params
    params.require(:lessor).permit(:first_name, :last_name, :service_id, :lease_id, :project_id,:name, :city, :state, :zip, :phone, :email)
  end
end
