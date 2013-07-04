class Second < ActiveRecord::Base
  attr_accessible :date, :uid, :video

  mount_uploader :video, VideoUploader
end
