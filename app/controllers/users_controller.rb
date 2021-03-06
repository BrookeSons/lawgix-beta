class UsersController < ApplicationController

  before_filter :authenticate_user!

  after_action :verify_authorized

  def index
    @users = User.all
    # authorize User
  end

  def new
    @user = User.new
    # authorize User
  end

  def show
    @user = User.find(params[:id])
    # authorize User
  end

  def create
    @user = User.new(secure_params)
    @user.save
  end

  def update
    @user = User.find(params[:id])
    # authorize User
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    @user = User.find(params[:id])
    # authorize User
    @user.destroy
    redirect_to users_path, :notice => "User deleted."
  end



  private



  def secure_params
    params.require(:user).permit(:role, :last_name, :first_name, :phone, :email, :name, :company_id )
  end


end

