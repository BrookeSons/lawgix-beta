class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    # authorize @company
  end

  def index
    @companies = Company.all
  end

  def create
    @company = Company.new(secure_params)
    @company.save

       redirect_to companies_path
  end

  private

  def secure_params
    params.require(:company).permit(:name, :billing_address,:billing_contact,:city, :state, :zip, :phone, :email)
  end

end


