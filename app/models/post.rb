class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 4}
  validates :body, presence: true
  has_one_attached :image
  def next
    Post.where("id > ?", id).order("id ASC").first
  end

  def previous
    Post.where("id < ?", id).order("id DESC").first
  end
end
