class SecondsController < ApplicationController 
  before_filter :authenticate_user!

  def index
    @seconds = current_user.seconds
  end

  def new 
    @second = Second.new
  end

  def create
    @second = current_user.seconds.create(params[:second])
    if @second.save
      redirect_to second_path(@second)
    else
      render "new"
    end
  end

  def show
    @sec_sprinkle = SecSprinkle.new
    @second = Second.find(params[:id])
    @sec_sprinkles = @second.sec_sprinkles
  end

  def search
    @tag = params[:tag]
    @sec_sprinkles = SecSprinkle.where(tag: @tag)
    @seconds = []
    @sec_sprinkles.each do | sprinkle |
      @seconds << Second.find_by_id(sprinkle.second_id)      
    end
    # @seconds = Second.where(sec_sprinkles.where(tag == params[:tag]))
    render template: "seconds/index"
  end

end
 