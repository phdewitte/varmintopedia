class ArticlesController < ApplicationController
  def index
    p "this is the article"
    p @article = @version.article
    p "these are the versions"
    p @versions = @article.versions
  end

  def show
    @article = Article.find(params[:id])
    @sections = @article.versions.last.add_ids_to_h1s
  end

  def new
    @article = Article.new
    @version = Version.new
    if user_signed_in?
      render 'new'
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    # @article = Article.find(params[:id])
    # @version = @article.versions.last
    # @article.versions.create()
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_url
  end
end
