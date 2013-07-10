class MobileSecSprinklesController < ApplicationController
  before_filter :set_user_by_auth_token
  
  def create
    second = Second.find_by_uid(params[:second_uid])
    if second
      second.sec_sprinkles << SecSprinkles.create(tag: params[:sprinkle_tag])
      render :status=>200, :json=>{:message=>"Sprinkle has been created. These are the sprinkles: #{@second.sec_sprinkles.inspect}"}
    else
      render :status=>403, :json=>{:message=>"Error creating sprinkle... something went wrong."}
    end

  end

  private 

  def set_user_by_auth_token
    auth_token = params[:token]
    @user = User.find_by_authentication_token(auth_token)
  end
end