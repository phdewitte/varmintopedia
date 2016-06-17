module ApplicationHelper
  def all_categories
    Category.all
  end

  def featured_articles_num
    @featured_articles_num || 2
  end

  def featured_articles_num=(new_num)
    @featured_articles_num = new_num
  end
end
