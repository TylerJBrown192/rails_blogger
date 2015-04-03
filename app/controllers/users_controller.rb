class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(current_user)
    @user.posts.destroy
    @user.comments.destroy
    @user.destroy
    redirect_to '/'
  end

end
