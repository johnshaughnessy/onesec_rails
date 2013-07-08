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
  end
end
