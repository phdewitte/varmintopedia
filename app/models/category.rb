class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :articles, through: :categorizations
end
