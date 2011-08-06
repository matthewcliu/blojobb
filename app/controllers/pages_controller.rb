class PagesController < ApplicationController
  def home
    @post = Post.new
    #@feed_items = current_user.feed.paginate(:page => params[:page])
    @posts = Post.paginate :page=>params[:page], :order=>'created_at desc',
        :per_page => 10
    
  end

  def contact
  end

  def results
  end

end
