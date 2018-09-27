class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def top_5
    #go through this destinations posts
    @sorted_posts = self.posts.sort_by {|a| a.created_at}
    #finds the 5 newest posts
  end

  def featured_post
    max_likes = self.posts.collect {|post| post.likes}.max
    self.posts.select {|post| post.likes == max_likes}
  end

  def average_blogger_age
    all_ages = self.bloggers.uniq.collect {|blogger| blogger.age}
    (all_ages.inject(:+) / 2)
  end
end
