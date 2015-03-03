class AbstractorsController < ApplicationController

  before_filter :authenticate_user!


  # after_action :verify_authorized


  def new
    @abstractor = Abstractor.new
    # authorize Abstractor
  end

  def show
    @abstractor = Abstractor.find(params[:id])
    # authorize @abstractor
  end

  def index
    @abstractors =  Abstractor.all
    # authorize Abstractor
  end

  def assign
    @service = Service.find(params[:service_id])
    @user = User.find(params[:id])
    @service.users << @user
    @service.transition_to!(:assigned)
    redirect_to dashboards_path
  end

  def dispatcher
   @service = ServicesUsers.create!(:service_id => params[:service], :user_id => params[:abstractors])
   @service.save
  end

  def create
    @abstractor = Abstractor.new(secure_params)
    @abstractor.save

    redirect_to abstractors_path
  end

  def update
    @abstractor = Abstractor.find(params[:id])
    authorize Abstractor
    if @abstractor.update_attributes(secure_params)
      redirect_to abstractors_path, :notice => "Abstractor updated."
    else
      redirect_to abstractors_path, :alert => "Unable to update abstractor."
    end
  end


  private

  def secure_params
    params.require(:abstractor).permit(:first_name, :last_name, :password, :name, :city, :state, :zip, :phone, :email)
  end
end
