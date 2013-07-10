class CakesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @cakes = current_user.cakes
  end

  def new 
    @cake = Cake.new
  end

  def create
    @cake = current_user.cakes.create(params[:cake])
    if @cake.save
      redirect_to cake_path(@cake)
    else
      render "new"
    end
  end

  def show
    @cake = Cake.find(params[:id])
    @cake_sprinkle = CakeSprinkle.new
    @cake_sprinkles = @cake.cake_sprinkles
  end

  def search
    @tag = params[:tag]
    @cake_sprinkles = CakeSprinkle.where(tag: @tag)
    @cakes = []
    @cake_sprinkles.each do | sprinkle |
      @cakes << Cake.find_by_id(sprinkle.cake_id)      
    end
    render template: "cakes/index"
  end
end
