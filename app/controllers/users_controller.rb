class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @user_new = User.new
    # @user_social_snstypes = @user.social.snstypes
    # @user_social_urls = @user.social.urls
  end
  def update
    @user = User.find(params[:id]).update(user_params)
    redirect_to root_path
  end
  def index
    @user = current_user
    @users = User.all
  end
  
  private
  def user_params
    params.require(:user).permit(:introduction)
  end
end
