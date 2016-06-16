class VersionsController < ApplicationController
  def index
    @versions = Version.search(params[:search_criteria])
  end

  def new
    @article = Ariticle.find_by(params[:article_id])
    @version = @article.versions.new(version_params)
  end

  def create
    @article = Article.create(author_id: current_user.id)
    @version = Version.new(title: article_params[:title], body: article_params[:body], editor_id: current_user.id, article_id: @article.id)
    if @version.save
      render 'articles/show'
    else
      render 'articles/new'
    end
  end

  private

  def article_params
    params.require(:version).permit(:title, :body)
  end
end
