class UsersController < ApplicationController

  def show
    @user = current_user

    favorites = Favorite.where(user_id: current_user.id).pluck(:post_id)
    @favorite_list = Post.find(favorites)
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def user_params
     params.require(:user).permit(:name, :birthplace, :introduction, :profile_image)
  end

end
