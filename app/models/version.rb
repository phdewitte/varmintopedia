class Version < ActiveRecord::Base
  belongs_to :editor, class_name: "User"
  belongs_to :article


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
end
