class Second < ActiveRecord::Base
  attr_accessible :date, :uid, :video
  has_many :users

  mount_uploader :video, VideoUploader
end
