class ContactsController < ApplicationController


  def new
    @contact = Contact.new
  end

  def show
    @contact = Contact.find(params[:id])
    # authorize @company
  end

  def index
    @contacts = Contact.all
  end

  def create
    @contacts = Contact.new(secure_params)
    @contacts.save

    redirect_to contacts_path
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :address,:city, :state, :zip, :phone, :email)
  end



end
