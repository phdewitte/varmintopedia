class Category < ActiveRecord::Base
  has_many :categorizations, :dependent => :destroy
  has_many :versions, through: :categorizations
  has_many :articles, through: :versions
  has_many :images, through: :articles

  validates :name,
    presence: true,
    uniqueness: true
end