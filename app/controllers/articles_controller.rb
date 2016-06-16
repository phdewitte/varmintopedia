class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
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

  private
end
