class SecondsController < ApplicationController
  def index
    @seconds = Second.all
  end
  
  def new 
    @second = Second.new
  end

  def create
    @second = Second.create(params[:second])
    if @second.save
      redirect_to second_path(@second)
    else
      render "new"
    end
  end

  def show
    @second = Second.find(params[:id])
  end
end
