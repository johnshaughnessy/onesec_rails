class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@cakes = current_user.cakes
  	@seconds = current_user.seconds
  end
end
