class Category < ActiveRecord::Base
  has_many :categorizations, :dependent => :destroy
  has_many :articles, through: :categorizations

  validates :name,
    presence: true,
    uniqueness: true
end