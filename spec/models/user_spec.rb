require 'spec_helper'

describe User do
  it "can be instantiated" do
    User.new.should be_an_instance_of(User)
  end

  it "should save to the database" do
    user = FactoryGirl.create(:user)
    user.should be_valid
  end
end