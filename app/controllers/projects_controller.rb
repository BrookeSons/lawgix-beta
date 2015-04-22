class ProjectsController < ApplicationController
  
  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    # authorize @company
  end

  def index
    @projects = Project.all
  end

  def create
    @projects = Project.new(secure_params)
    @projects.save

    redirect_to contacts_path
  end

  private

  def secure_params
    params.require(:project).permit!
  end
end
