class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]
  before_action :set_articles, only: [:show]

  def index
    @categories = Category.all
  end

  def show
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def set_articles
      @articles = @category.articles
    end
end
