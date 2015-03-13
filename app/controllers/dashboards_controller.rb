class DashboardsController < ApplicationController

   def show
     @services = Service.all
     # authorize @user
   end

  def index
    @services = Service.order(created_at: :desc).all.paginate(page: params[:page], per_page: 8)
    @abstractors = Abstractor.all
  end
#
#  def transition
#    @service = Service.find(params[:id])
# end
#




end