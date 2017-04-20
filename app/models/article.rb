class Article < ActiveRecord::Base
  belongs_to :category

  validates :category_id, presence: true

  def photo_path
    "/images/article/#{self.id}/photo/#{self.photo}"
  end
end
