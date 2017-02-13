class FeedController < ApplicationController
  before_action :authenticate_user!

  def show
    @tweets = Tweet.where(user: current_user.all_following).order(created_at: :desc)
    @spaces = Space.where(user: current_user.all_following).order(created_at: :desc)
    @user = User.find_by(username: current_user.username)
  end
end
