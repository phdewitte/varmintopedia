class Version < ActiveRecord::Base
  belongs_to :editor, class_name: "User"
  belongs_to :article
  has_many :categorizations, :dependent => :destroy
  has_many :categories, through: :categorizations

  validates_presence_of :title, :body

  attr_accessor :category_names
  after_save :assign_categories


  def add_ids_to_h1s
   sections = []
   body_html = Nokogiri::HTML(self.body)
   h1s = body_html.css('h1')
   i = 0
   while i < h1s.length do
     h1s[i]['id'] = i
     sections << "<a href='##{i}'>#{h1s[i].text}</a>"
     i += 1
   end
   return sections
  end

  def self.search(criteria)
    if criteria
      where('title LIKE ?', "%#{criteria}%")
      where('body LIKE ?', "%#{criteria}%")
    else
      where(true)
    end
  end


  private

  def assign_categories
    @category_names
    if @category_names
      self.categories = @category_names.split(/\s+/).map do |name|
        Category.find_or_create_by(name: name)
      end
    end
  end
end
