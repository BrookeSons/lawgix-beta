class DeedsController < ApplicationController
  before_action :set_deed, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @deeds = Deed.all
    respond_with(@deeds)
  end

  def show
    respond_with(@deed)
  end

  def new
    @deed = Deed.new
    @document = @deed.document
    respond_with(@deed)
  end

  def edit
  end

  def create
    @deed = Deed.new(deed_params)
    flash[:notice] = 'Deed was successfully created.' if @deed.save
    respond_with(@deed)
  end

  def update
    flash[:notice] = 'Deed was successfully updated.' if @deed.update(deed_params)
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
