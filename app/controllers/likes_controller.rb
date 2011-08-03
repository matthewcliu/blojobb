class LikesController < ApplicationController

  def like
    @post = Post.find(params[:id])
  
    if @post.likes == nil
      @post.likes = 1
      @post.save
      redirect_to(root_path)
    else
      @post.likes += 1
      @post.save
      redirect_to(root_path)
    end
  end

  def dislike
    @post = Post.find(params[:id])
  
    if @post.dislikes == nil
      @post.dislikes = 1
      @post.save
      redirect_to(root_path)
    else
      @post.dislikes += 1
      @post.save
      redirect_to(root_path)
    end
  end

end
