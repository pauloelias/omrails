class PagesController < ApplicationController
  def home
  	@spaces = Space.order(created_at: :desc)
  end
end
