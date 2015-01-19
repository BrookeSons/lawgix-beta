class ServiceTransitionsController < ApplicationController


  def show
    @transition = ServiceTransition.find(params[:id])
    # authorize @user
  end

  def index
    @transitions = ServiceTransition.all.paginate(page: params[:page], per_page: 8)
  end


  def lease

  end

end