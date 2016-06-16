class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :versions
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :versions
end
