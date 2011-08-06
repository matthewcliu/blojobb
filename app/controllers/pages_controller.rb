class PagesController < ApplicationController
  def home
    @post = Post.new
    #@feed_items = current_user.feed.paginate(:page => params[:page])
    @posts = sorted_posts(params[:sort]).paginate(:page => params[:page], :per_page => 10)
    
  end

  def contact
  end

  def results
  end

end
