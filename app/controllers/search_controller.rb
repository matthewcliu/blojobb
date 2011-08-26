class SearchController < ApplicationController
  # GET /search
  # GET /search.xml
  def search
    @post_results = Post.search(params[:search])    
    @tag_posts = Tag.search_tags_and_return_posts(params[:search])
    @posts = @post_results + @tag_posts

    respond_to do |format|
      format.html # search.html.erb
      format.xml  { render :xml => @posts }
    end
  end
end