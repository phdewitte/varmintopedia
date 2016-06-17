class Article < ActiveRecord::Base

  belongs_to :author, class_name: "User"
  has_many :versions
  has_many :images

  def current
    versions.last
  end

  def title
    current.title
  end

  def body
    current.body
  end

  def category_names
    current.category_names
  end

  def self.placeholder_image
    # "/assets/rat-logo.png"
    image_tage('rat-logo.png')
  end

  def random_img_path
    images.try(:sample).try(:url) || self.class.placeholder_image
  end
end
