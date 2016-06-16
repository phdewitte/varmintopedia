class Version < ActiveRecord::Base
  belongs_to :editor, class_name: "User"
  belongs_to :article

  def self.search(criteria)
    if criteria
      where('title LIKE ?', "%#{criteria}%")
      where('body LIKE ?', "%#{criteria}%")
    else
      where(true)
    end
  end
end
