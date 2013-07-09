require 'spec_helper'

describe Second do
  let! (:user) { FactoryGirl.create(:user) }

  it "can be instantiatied" do
    Second.new.should be_an_instance_of(Second)
  end

  it "can be saved to the database" do
    second = Second.create(date: 'today', uid: 'some unique string')
    second.should be_valid
  end

  it "can be created by a user" do
    expect{ user.seconds.create(date: 'today', uid: 'some unique string') }.to change(user.seconds, :count).by(1)
  end
end