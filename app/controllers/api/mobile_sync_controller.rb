class MobileSyncController < ApplicationController
  before_filter :set_user_by_auth_token

  def getSeconds
    @seconds = @user.seconds
    if @seconds
      render :partial => "seconds_for_sync", object: @seconds
    else
      render status:403, json: { message: "Something went wrong" }
    end
    
  end

  def set_user_by_auth_token
    auth_token = params[:token]
    @user = User.find_by_authentication_token(auth_token)
  end
end