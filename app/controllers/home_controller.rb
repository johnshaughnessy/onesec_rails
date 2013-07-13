require 'will_paginate/array'
class HomeController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  def index
    if current_user
      @cakes = current_user.cakes.paginate(:page => params[:cakes_page], per_page: 6)
  	  @seconds = current_user.seconds.paginate(:page => params[:seconds_page], per_page: 12)
      @cake = Cake.new
      @cake_sprinkle = CakeSprinkle.new
      @second = Second.new
      @sec_sprinkle = SecSprinkle.new
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
    @seconds = @seconds.paginate(:page => params[:seconds_page], per_page: 12)
    @cakes = @cakes.paginate(:page => params[:cakes_page], per_page: 6)
    @cake = Cake.new
    @cake_sprinkle = CakeSprinkle.new
    @second = Second.new
    @sec_sprinkle = SecSprinkle.new
    render template:"home/index"
  end
end
