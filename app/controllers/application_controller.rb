class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def sorted_posts(sort_type)
    
    if sort_type == 'likes'
      Post.order("likes DESC")
    elsif sort_type == 'dislikes'
      Post.order("dislikes DESC")
    else
      Post.order("created_at DESC")
    end
  end
  
end
