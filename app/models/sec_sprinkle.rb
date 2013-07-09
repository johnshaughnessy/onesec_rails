class SecSprinkle < ActiveRecord::Base
  attr_accessible :tag

  belongs_to :second
end
