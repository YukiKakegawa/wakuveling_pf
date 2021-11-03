class PostCommentsController < ApplicationController

  def create
    post_comment = PostComment.new(post_comment_params)
    post_comment.user = current_user
    post = Post.find(params[:post_id])
    post_comment.post = post
    post_comment.save
    redirect_to post_path(post)
  end

  def destroy
  end

  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
