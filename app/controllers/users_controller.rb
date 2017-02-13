class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def create
    @user = User.create(user_params)
  end

  def show
    @user = User.find_by(username:params[:username])
    @tweets = @user.tweets
    @spaces = @user.spaces
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:avatar)
    end
end
