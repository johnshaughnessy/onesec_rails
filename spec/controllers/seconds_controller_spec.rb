require 'spec_helper'

describe SecondsController do

  def json_response
    JSON.parse(response.body)
  end

  context "when logged out" do
    it "should redirect GET #index requests to the sign in page" do
      get :index 
      response.body.should have_content("You are being redirected")
    end    

    it "should redirect GET #new" do
      get :new
      response.body.should have_content("You are being redirected")
    end
  end

  context "when logged in" do
    before do
      sign_in FactoryGirl.create(:user)
    end

    it "should show seconds and cakes for GET #index" do
      get :index
      assert_response :success
    end
  end
end