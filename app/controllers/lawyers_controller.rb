class LawyersController < ApplicationController

  def new
    @lawyer = Lawyer.new
  end

  def show
    @lawyer = Lawyer.find(params[:id])
    # authorize @company
  end

  def index
    @lawyers =  Lawyer.all
  end

  def create
    @lawyer = Lawyer.new(secure_params)
    @lawyer.save
    redirect_to lawyers_path
  end

  private

  def secure_params
    params.require(:lawyer).permit(:first_name, :last_name,:lawfirm_id, :password, :name, :city, :state, :zip, :phone, :email)
  end
end