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

  private

  def secure_params
    params.require(:lessor).permit(:first_name, :last_name, :service_id, :lease_id, :project_id,:name, :city, :state, :zip, :phone, :email)
  end
end
