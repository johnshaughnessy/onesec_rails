class Second < ActiveRecord::Base
  attr_accessible :date, :uid, :video
  has_many :users
  has_many :sec_sprinkles

  mount_uploader :video, VideoUploader
end
