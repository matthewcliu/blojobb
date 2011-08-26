class TagsController < ApplicationController
  # GET /tag
  # GET /tag.xml
  def show
    
    @posts = Tag.search_tags_and_return_posts(params[:tag])
    
    respond_to do |format|
      format.html # search.html.erb
      format.xml  { render :xml => @posts }
    end
  end
end