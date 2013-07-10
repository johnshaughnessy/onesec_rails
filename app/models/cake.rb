class Cake < ActiveRecord::Base
  attr_accessible :uid, :video
  has_many :cake_sprinkles

  mount_uploader :video, VideoUploader
end
