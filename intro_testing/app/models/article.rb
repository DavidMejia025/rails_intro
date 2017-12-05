class Article < ApplicationRecord
  validates :title, presence: true

  def reverse_title
    self.title.reverse
  end
end
