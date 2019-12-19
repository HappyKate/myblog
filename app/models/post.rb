class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 4}
  validates :body, presence: true
  has_one_attached :image
end
