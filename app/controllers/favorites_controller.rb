class FavoritesController < ApplicationController

  before_action :authenticate_user!

  def index
    @posts = Post.all
    favorites = Favorite.where(user_id: current_user.id).pluck(:post_id)
    @favorite_list = Post.find(favorites)
    #@favorite_post_list = Post.joins(:favorites).where("favorites.user_id = ?",current_user.id)
  end

  def create
    Favorite.create!(user_id: current_user.id, post_id: params[:post_id])

    @post = Post.find(params[:post_id])
  end

  def destroy
    @post = Post.find(params[:post_id])
    favorite = Favorite.find_by(user_id: current_user.id, post_id: params[:post_id])
    favorite.destroy
  end

private
  def post_find
    @post = Post.find(params[:post_id])
  end

end


