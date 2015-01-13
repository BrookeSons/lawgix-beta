class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.find(params[:id])
    # authorize @company
  end

  def index
    @employees =  Employee.all
  end

  def create
    @employee = Employee.new(secure_params)
    @employee.save

    redirect_to clients_path
  end

  private

  def secure_params
    params.require(:employee).permit(:first_name, :last_name,:company_id, :password, :name, :city, :state, :zip, :phone, :email)
  end
end