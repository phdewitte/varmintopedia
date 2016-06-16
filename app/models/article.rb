class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :versions

  def current
    versions.last
  end

  def title
    current.title
  end

  def body
    current.body
  end
end
