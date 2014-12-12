class ContactsController < ApplicationController
  
  before_action :set_type

  def index
    @contacts = Contacts.all
  end

  private

  def set_type
    @type = type
  end

  def type
    Contact.types.include?(params[:type]) ? params[:type] = "Lessee"
  end

end
