class MobileSecondsController < ApplicationController
  before_filter :set_user_by_auth_token
  def get_user_info
    if @user
      render :status=>200, :json=>{:message=>"User #{@user.email} has been found with #{@user.inspect}"}
    else
      render :status=>403, :json=>{:message=>"Oh shit something happened"}
    end
  end

  def create
    auth_token = params[:token]
    @user = User.find_by_authentication_token(auth_token)
    @second = @user.seconds.build(params[:second])
    raise 'fuck' unless @second
    if @second.save
      render :status=>200, :json=>{:message=>"Second has been created with #{@second.inspect} \n \n Also, user is #{@user.inspect}"}
    else
      render :status=>403, :json=>{:message=>"Unable to create second"}
    end
  end

  private

  def set_user_by_auth_token
    auth_token = params[:token]
    @user = User.find_by_authentication_token(auth_token)
    raise 'NoUserERRORBLAHH' unless @user
  end

end