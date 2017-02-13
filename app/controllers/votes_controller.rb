class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    space = Space.find(params[:id])
    space.liked_by current_user
    redirect_back(fallback_location: spaces_path, notice: "You successfully voted for an item")
  end

  def destroy
    space = Space.find(params[:id])
    space.unliked_by current_user
    redirect_back(fallback_location: spaces_path, notice: "You successfully downvoted for an item")
  end
end
