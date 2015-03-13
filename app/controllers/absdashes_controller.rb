class AbsdashesController < ApplicationController


  before_filter :authenticate_user!



  # after_action :verify_authorized

  def show
    @services = Service.order(created_at: :desc).all
    # authorize @user
  end

  def index
    @services = Service.order(created_at: :desc).all.paginate(page: params[:page], per_page: 8)
    @abstractors = Abstractor.all
  end

end