class VersionsController < ApplicationController
  before_action :set_version, only: [:show]
  before_action :set_article, only: [:create, :index]

  def index
    @article = Article.find(params[:article_id])
    @versions = @article.versions.order(created_at: :desc)
  end

  def search
    @versions = Version.search(params[:search_criteria])
  end

  def new
    @version = Version.new
  end

  def create
    @article.versions.new(version_params)

    respond_to do |format|
      if @version.save
        format.html { redirect_to @article, notice: 'version was successfully created.' }
        format.json { render :show, status: :created, location: @version }
      else
        format.html { render :new }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @version = Version.find(params[:id])
  end

  private

  def version_params
    params.require(:version).permit(:title, :body, :published, :has_bibliography)
  end

  def set_version
    @version = Version.find(params[:id])
  end

  def set_article
    @article = Article.find_by(id: params[:article_id])
  end
end
