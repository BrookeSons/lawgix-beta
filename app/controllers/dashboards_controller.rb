class DashboardsController < ApplicationController

  def show
    @service = Service.find(params[:id])
    # authorize @user
  end

  def index
    @services = Service.all.paginate(page: params[:page], per_page: 8)
  end

 def transition
   @service = Service.find(params[:id])

end


end