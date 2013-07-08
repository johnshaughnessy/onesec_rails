class Cake < ActiveRecord::Base
  attr_accessible :uid, :video

  mount_uploader :video, VideoUploader
end
