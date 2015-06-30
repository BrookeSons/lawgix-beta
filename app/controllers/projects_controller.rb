class ProjectsController < ApplicationController

  def new
    @form = ProjectForm.new(Project.new)
  end

  def show
    @project = Project.find(params[:id])
    # authorize @company
  end

  def index
    @projects = Project.order(created_at: :desc).page_k(params[:page])
  end

  def create
    @form = ProjectForm.new(Project.new)
    if @form.validate(params[:project])
      @form.save
      redirect_to project_path(@form)
    else
      render :new
    end
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
