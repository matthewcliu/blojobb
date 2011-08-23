class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def sorted_posts(sort_type)
    if sort_type == "likes"
      by_likes
    elsif sort_type == "dislikes"
      by_dislikes
    else
      by_recency
    end
  end
  
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
  
  def relationship_search(tag)
    matching_relationships = Relationship.find(:all, :conditions => ['tag_value LIKE ?', "%#{tag}%"])
  end
  
end
