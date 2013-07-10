class MobileCakeSprinklesController < ApplicationController
  before_filter :set_user_by_auth_token
  
  def create
    cake = Cake.find_by_uid(params[:cake_uid])
    if cake
      cake.cake_sprinkles << CakeSprinkle.create(tag: params[:sprinkle_tag])
      render :status=>200, :json=>{:message=>"Sprinkle has been created. These are the sprinkles: #{cake.cake_sprinkles.inspect}"}
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