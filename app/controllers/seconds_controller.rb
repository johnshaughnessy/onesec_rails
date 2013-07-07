class SecondsController < ApplicationController
  prepend_before_filter :get_auth_token
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
    @second = Second.find(params[:id])
  end

  private
  def get_auth_token
    if auth_token = params[:auth_token].blank? #&& request.headers["X-API-KEY"]
      params[:auth_token] = auth_token
    end
  end

end

#passenger gem