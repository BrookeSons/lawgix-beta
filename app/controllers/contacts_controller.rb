class ContactsController < ApplicationController


  def new
    @contact  = ContactForm.new(Contact.new)
    @project = Project.find(params[:project])
  end

  def show
    @contact = Contact.find(params[:contact_id])
    # authorize @company
  end

  def index
    @contacts = Contact.all
  end

  def update
    @contact = Contact.find(params[:contact_id])

    if @contact.update_attributes(secure_params)
      redirect_to projects_path, :notice => "Contact updated."
    else
      redirect_to projects_path, :alert => "Unable to update Contact."
    end
  end

  def create
    @form = ContactForm.new(Contact.new)
    if @form.validate(params[:contact])
      @form.save
      redirect_to projects_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:contact).permit!
  end



end
