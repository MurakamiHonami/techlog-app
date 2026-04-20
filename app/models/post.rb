class Post < ApplicationRecord
  belongs_to :user

  validates :title, length: { maximum: 100 }, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
  
end
