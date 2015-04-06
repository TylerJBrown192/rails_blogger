class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(current_user)
    @user.destroy
    redirect_to '/'
  end

end
