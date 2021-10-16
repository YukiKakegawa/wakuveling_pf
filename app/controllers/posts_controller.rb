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
    @posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end

  def destroy
  end

  def post_params
    params.require(:post).permit(:image, :title, :body)
  end

end
