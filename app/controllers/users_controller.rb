class UsersController < ApplicationController

  before_filter :authenticate_user!

  after_action :verify_authorized

  def index
    @users = User.all
    authorize User
  end

  def new
    setup_sti_model
     authorize User
  end

  def show
    @user = User.find(params[:id])
    authorize User
  end

  def create
    setup_sti_model
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    @user = User.find(params[:id])
    authorize @user
    @user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private


  def setup_sti_model
    # Attempt to instantiate the correct User subclass based on the type
    # parameter sent from forms and querystrings
    # logger.debug "Attempting to detect implied User subclass"
    if !params[:user].blank? and !params[:user][:type].blank?
      # Type param found, let's see if it's a valid subclass
      type = params[:user].delete(:type)
      # logger.debug "Type param '#{type}' found. Looking for match in list of User.descendants:"
      begin
        # logger.debug "Attempting to constantize '#{type}' to a model class"
        model = type.constantize
        # logger.debug "Attempting to instantiate '#{type}' model class"
        @user = model.new(params[:user])
          # logger.debug @user inspect
      rescue => e
        # Type param found, but an error prevented us from creating the
        # object. Fall through to create a generic User object
        # logger.debug "Type param '#{type}' found, but an error prevented us from creating the object: #{e}"
      else
        # No errors encountered, return having instantiated the proper
        # subclass
        # logger.debug "No errors encountered, returning"
        return
      end
    else
      # No type param was found, fall through to create a generic Kase object
      # logger.debug "Type param not found"
    end
    # If all else fails just instantiate a generic User object
    # logger.debug "Could not instantiate a subclass. Creating generic User object instead"
    @user = User.new(params[:user])
    # logger.debug @user.inspect
  end




  def secure_params
    params.require(:user).permit(:role, :last_name, :first_name, :phone, :email, :name )
  end



end

