class SecondsController < ApplicationController 
  # before_filter :authenticate_user!
  before_filter :set_current_user

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
    @second = Second.find(params[:id])
  end

  private

  def set_current_user
    current_user = User.find_by_email(params[:email])
    current_user = User.first unless current_user
  end

end
 