class Image < ActiveRecord::Base
  belongs_to :article
  has_many :versions, through: :article
  has_many :categorizations, through: :versions
  has_many :categories, through: :categorizations

  validates :url, presence: true
end
