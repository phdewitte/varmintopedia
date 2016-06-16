class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :versions
  has_many :categorizations, :dependent => :destroy
  has_many :categories, through: :categorizations

  validates_presence_of :name, :content

  attr_writer :category_names

  after_save :assign_tags

  def category_names
      @category_names || categories.map(&:name).join(' ')
    end
    
    private
    
    def assign_categories
      if @category_names
        self.categories = @category_names.split(/\s+/).map do |name|
          Tag.find_or_create_by_name(name)
        end
      end
    end
  end
end
