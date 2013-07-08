class MobileSecondsController < ApplicationController
  before_filter :set_user_by_auth_token
  def get_user_info
    if @user
      render :status=>200, :json=>{:message=>"User #{@user.email} has been found with #{@user.inspect}"}
    else
      render :status=>403, :json=>{:message=>"Oh no something bad happened"}
    end
  end

  def create
    @second = @user.seconds.build(params[:second])
    raise 'noseconderror' unless @second
    if @second.save
      render :status=>200, :json=>{:message=>"Second has been created with #{@second.inspect}"}
    else
      render :status=>403, :json=>{:message=>"Unable to create second"}
    end
  end

  private

  def set_user_by_auth_token
    auth_token = params[:token]
    @user = User.find_by_authentication_token(auth_token)
  end

end