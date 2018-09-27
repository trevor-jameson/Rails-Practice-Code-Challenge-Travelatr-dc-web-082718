class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

   #validations
  validates :name, uniqueness: true, presence: true
  validates :bio, length: {minimum: 30}
  validates :age, numericality: {greater_than: 0}

  def total_likes
    #go through bloggers posts and get the total_likes
    total = 0
    self.posts.each do |post|
      # add them
      total += post.likes
    end
    total
  end

  def featured_post
    my_likes = {}
    self.posts.map do |post|
      my_likes[post.likes] = post.id
    end
    greatest_like_id = my_likes[my_likes.keys.max]
    Post.find(greatest_like_id)
  end

end
