class ClientsController < ApplicationController

  def new
    @client = Client.new
  end

  def show
    @client = Client.find(params[:id])
    # authorize @company
  end

  def index
    @clients =  Client.all
  end

  def create
    @client = Client.new(secure_params)
    @client.save

    redirect_to clients_path
  end

  private

  def secure_params
    params.require(:client).permit(:first_name, :last_name,:company_id, :password, :name, :city, :state, :zip, :phone, :email)
  end
end