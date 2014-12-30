
class ClientsController < ApplicationController

  def new
    @client = Client.new
    authorize User
  end

  def show
    @client = Client.find(params[:id])
     authorize @client
  end

  def index
    @clients = Client.all
  end

  def create
    @client = Client.new(secure_params)
    @client.save
    authorize User

       redirect_to clients_path
  end

  private

  def secure_params
    params.require(:client).permit(:first_name, :last_name, :phone, :email)
  end

end


