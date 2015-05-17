class TitleAbstractsController < ApplicationController

  before_action :set_title_abstract, only: [:show, :edit, :update, :destroy]

   before_filter :authenticate_user!

  # after_action :verify_authorized


  respond_to :html

  def index
    @title_abstracts = TitleAbstract.all
    respond_with(@title_abstracts)
  end

  def show
    respond_with(@title_abstract)
  end

  def new
    @title_abstract = TitleAbstract.new
    @project = Project.find(params[:project])
    @title_abstract.deeds.build
    @title_abstract.documents.build
  end

  def edit
  end

  def create
    @title_abstract = TitleAbstract.new(title_abstract_params)
    @title_abstract.save
  end

  def update
    @title_abstract.update(title_abstract_params)
  end

  def destroy
    @title_abstract.destroy
  end

  private


    def set_title_abstract
      @title_abstract = TitleAbstract.find(params[:id])
    end

    def title_abstract_params
      params.require(:title_abstract).permit!
       # (:title_abstract).permit(:name, :due_date, :comments,
       #      deeds_attributes: [:db, :db_page, :d_date, :grantor, :grantee, :d_type, :comments, :d_image] )
    end
end
