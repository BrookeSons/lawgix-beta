class ProjectsController < ApplicationController
  
  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    # authorize @company
  end

  def index
    @projects = Project.order(created_at: :desc).all.paginate(page: params[:page], per_page: 8)
  end

  def create
    @project = Project.new(secure_params)
    @project.save!
    redirect_to project_path(@project)
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(secure_params)
      redirect_to projects_path, :notice => "Project updated."
    else
      redirect_to projects_path, :alert => "Unable to update Project."
    end
  end
  private

  def secure_params
    params.require(:project).permit!
  end
end
