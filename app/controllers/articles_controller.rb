class ArticlesController < ApplicationController
  def index
    @categories = Category.all
    @articles = Article.all
  end

  def show
    @categories = Category.all
    @article = Article.find(params[:id])
    @sections = @article.versions.last.add_ids_to_h1s
    p @sections
  end

  def new
    @categories = Category.all
    @article = Article.new
    @version = Version.new
    if user_signed_in?
      render 'new'
    else
      redirect_to new_user_session_path
    end
  end

  private
end
