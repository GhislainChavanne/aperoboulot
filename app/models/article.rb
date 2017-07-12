class Article < ApplicationRecord
  validates :title, presence:true, length: { maximum: 30 }
  validates :auteur, presence: true
  validates :description, presence: true, length: { maximum: 200 }
  validates :content, presence: true
  validates :category, presence: true
end
