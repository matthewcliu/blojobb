class LikesController < ApplicationController

  def like
    @post = Post.find(params[:id])
  
    if @post.likes == nil
      @post.likes = 1
      @post.save
      redirect_to :back
    else
      @post.likes += 1
      @post.save
      redirect_to :back
    end
  end

  def dislike
    @post = Post.find(params[:id])
  
    if @post.dislikes == nil
      @post.dislikes = 1
      @post.save
      redirect_to :back
    else
      @post.dislikes += 1
      @post.save
      redirect_to :back
    end
  end

end
