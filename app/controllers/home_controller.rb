class HomeController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  def index
    if current_user
      @cakes = current_user.cakes
  	  @seconds = current_user.seconds
    end
  end

  def search
    if current_user
      @tag = params[:tag]
      @cake_sprinkles = CakeSprinkle.where(tag: @tag)
      @cakes = []
      @cake_sprinkles.each do | cake_sprinkle |
        @cakes << Cake.find_by_id(cake_sprinkle.cake_id)   
      end
      @sec_sprinkles = SecSprinkle.where(tag: @tag)
      @seconds = []
      @sec_sprinkles.each do | sec_sprinkle |
        @seconds << Second.find_by_id(sec_sprinkle.second_id)      
      end  
    end
    render template:"home/index"
  end
end
