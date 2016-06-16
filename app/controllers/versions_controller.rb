class VersionsController < ApplicationController

  def create
    @article = Article.create(author_id: current_user.id)
    @version = Version.new(title: article_params[:title], body: article_params[:body], editor_id: current_user.id, article_id: @article.id)
    if @version.save
      # redirect_to @article
      render 'articles/show'
    else
      render 'articles#new'
    end
  end

  private

  def article_params
    params.require(:version).permit(:title, :body)
  end
end

