
class OwnersController < ApplicationController

  # before_filter :authenticate_user!

  def new
    @owner = Owner.new
    @project = Project.find(params[:project])
    if @project
      @owner.project = @project
    end
  end

  def show
    @owner = Owner.find(params[:id])
    # authorize @company
  end

  def index
    @owners =  Owner.all
  end

  def create 

    @owner = Owner.new(secure_params)
    @owner.save
    redirect_to project_path(@owner.project)
  end

  def update
    @owner = Owner.find(params[:id])

    if @owner.update_attributes(secure_params)
      redirect_to project_path(@owner.project)
    else
      redirect_to project_path(@owner.project)
    end
  end

  private

  def secure_params
    params.require(:owner).permit!
  end
end
