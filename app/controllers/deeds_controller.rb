class DeedsController < ApplicationController
  before_action :set_deed, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @deeds = Deed.all
    respond_with(@deeds)
  end

  def new
    @deed = Deed.new
    @deed.documents.build
  end

  def edit
  end

  def create
    @deed = Deed.new(deed_params)
    @deed.save
  end

  def show
    @deed = Deed.new(deed_params)
    @documents = @deed.documents
  end

  def update
    @deed = Deed.find(params[:id])
    if @deed.update_attributes(service_params)
      redirect_to deeds_path, :notice => "Deed updated."
    else
      redirect_to deeds_path, :alert => "Unable to update Deed."
    end
    respond_with(@deed)
  end

  def destroy
    @deed.destroy
    respond_with(@deed)
  end

  private
    def set_deed
      @deed = Deed.find(params[:id])
    end

    def deed_params
      params.require(:deed).permit(:db, :db_page, :d_date, :grantor,:created_at, :updated_at, :grantee, :d_type, :comments, :d_image)
    end
end
