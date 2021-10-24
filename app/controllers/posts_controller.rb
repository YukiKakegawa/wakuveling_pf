class PostsController < ApplicationController

  def new
    @post= Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to user_path(current_user)
  end

  def index
    @posts = current_user.posts
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
    # @post_comments = @post.post_comments.all
    # @posts = Post.all
  end

  def update
    user_post = Post.find(params[:id])
    user_post.update(post_params)
    redirect_to posts_path
  end

  def destroy
    user_post = Post.find(params[:id])
    user_post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:image, :tourist_spot, :prefecture, :address, :body)
  end

end
