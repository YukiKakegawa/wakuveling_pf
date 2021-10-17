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
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
    # @post_comments = @post.post_comments.all
  end
  
  def update
  end

  def destroy
  end
  
  private

  def post_params
    params.require(:post).permit(:image, :tourist_spot, :prefecture, :address, :body)
  end

end
