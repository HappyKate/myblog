class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: {minimum: 4}
  validates :body, presence: true
end
