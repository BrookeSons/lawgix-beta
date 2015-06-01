class ClientsController < ApplicationController

  def new
    @client = Client.new
  end

  def show
    @client = Client.find(params[:id])
    # authorize @company
  end

  def index
    @client =  Client.all
  end

  def create
    @client = Client.new(secure_params)
    @client.save

    redirect_to clients_path
  end

  private

  def secure_params
    params.require(:employee).permit!
  end
end
