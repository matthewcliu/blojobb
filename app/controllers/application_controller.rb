class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def by_likes
    all_posts = Post.all
    by_likes_posts = all_posts.sort_by(&:likes).reverse
  end
  
  def by_dislikes
    all_posts = Post.all
    by_dislikes_posts = all_posts.sort_by(&:dislikes).reverse
  end
  
  def by_recency
    all_posts = Post.all
    by_recency_posts = all_posts.sort_by(&:created_at).reverse  
  end
  
end
