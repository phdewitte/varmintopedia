class VersionsController < ApplicationController
  def index
    @versions = Verison.all
  end

  def new
    @article = Ariticle.find_by(params[:article_id])
    @version = @article.versions.new(version_params)
  end

  def create
    @version = Version.new(version_params)
    if @version.save
      redirect_to article_path
    else
      @errors = @version.errors.full_messages
      render 'new'
    end
  end

  private
    def version_params
      params.require(:version).permit(:title, :body, :editor_id)
    end
end
