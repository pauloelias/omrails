class PagesController < ApplicationController
  def home
  	if current_user
  		@spaces_user = current_user.spaces.all
  	else
  		@spaces_all = Space.all
  	end
  end
end
