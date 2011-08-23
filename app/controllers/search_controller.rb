class SearchController < ApplicationController
  # GET /search
  # GET /search.xml
  def search
    @post_results = Post.search(params[:search])
#    @tag_posts = Tag.search_tags_and_return_posts(params[:search])
    puts @post_results
    puts "@"*100
    
    @tag_posts = Tag.search_tags_and_return_posts(params[:search])
    puts "="*100
    puts @tag_posts
    @posts = @post_results + @tag_posts
    puts "@"*100
    puts @posts

    respond_to do |format|
      format.html # search.html.erb
      format.xml  { render :xml => @posts }
    end
  end
end