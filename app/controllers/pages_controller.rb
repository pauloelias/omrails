class PagesController < ApplicationController
  def home
  	if current_user
  		@spaces = current_user.spaces.order(created_at: :desc)
  	else
  		@spaces = Space.order(created_at: :desc)
  	end
  end
end
