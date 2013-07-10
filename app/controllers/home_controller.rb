class HomeController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  def index
    if current_user
      @cakes = current_user.cakes
  	  @seconds = current_user.seconds
    end
  end
end
