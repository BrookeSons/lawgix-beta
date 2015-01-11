class LawfirmsController < ApplicationController

  def new
    @lawfirm = Lawfirm.new
  end

  def show
    @lawfirm = Lawfirm.find(params[:id])
    # authorize @company
  end

  def index
    @lawfirms = Lawfirm.all
  end

  def create
    @lawfirms = Lawfirm.new(secure_params)
    @lawfirms.save

    redirect_to lawfirms_path
  end

  private

  def secure_params
    params.require(:lawfirm).permit(:name, :address,:city, :state, :zip, :phone, :email)
  end
end
