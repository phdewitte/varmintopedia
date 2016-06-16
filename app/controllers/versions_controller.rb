class VersionsController < ApplicationController

  before_action :set_version, only: [:show]
  before_action :set_article, only: [:create, :index]


  def index
    @versions = @article.versions
  end

  def new
    @version = Version.new
  end

  def create
    @article.versions.new(version_params)

    respond_to do |format|
      if @version.save
        format.html { redirect_to @version, notice: 'version was successfully created.' }
        format.json { render :show, status: :created, location: @version }
      else
        format.html { render :new }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def version_params
    params.require(:version).permit(:title, :body)
  end

  def set_version
    @version = Version.find(params[:id])
  end

  def set_article
    @article = Article.find_by(id: params[:article_id])
  end
end

