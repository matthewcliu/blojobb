class LikesController < ApplicationController

  def like
    @post = Post.find(params[:id])
    @post.likes += 1
    @post.save
    redirect_to :back
  end

  def dislike
    @post = Post.find(params[:id])
    @post.dislikes += 1
    @post.save
    redirect_to :back
  end

end
