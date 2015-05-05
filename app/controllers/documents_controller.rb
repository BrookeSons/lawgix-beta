class DocumentsController < ApplicationController

  def new
    @document = Document.new
    @project = Project.find(params[:project])
  end

  def show
    @document = Document.find(params[:id])
    @embed = %Q{<%=<iframe src="https://apps.groupdocs.com/document-viewer/Embed/#{@document.groupdocs_guid}?quality=50&use_pdf=False&download=False&print=False&signature=BXaa45uhauxOyiDBFw3vlKFRAT8" frameborder="0" width="600" height="500"></iframe> %>}.html_safe
    # authorize @company
  end

  def index
    @documents = Document.all
  end

  def create
    @document = Document.new(secure_params)
    @document.save

    redirect_to documents_path
  end

  private

  def secure_params
    params.require(:document).permit!
  end

end
