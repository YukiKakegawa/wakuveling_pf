class UsersController < ApplicationController

  def new
  end

  def show
    @user = current_user
  end

  def edit
  end

  def update
  end

  # def user params
    # params.require(:user).permit(:name, :email, :password, :password_confirmation, :telephone_number, :birthplace)
  # end

end
