class PagesController < ApplicationController
  def home
    @post = Post.new
    #@feed_items = current_user.feed.paginate(:page => params[:page])
    @posts = Post.all
    
  end

  def contact
  end

  def results
  end

end
