class AbstractorDashboardsController < ActionController::Base

  def show
    @services = Service.all
    # authorize @user
  end

  def index
    @services = Service.all.paginate(page: params[:page], per_page: 8)
    @abstractors = Abstractor.all
  end

end