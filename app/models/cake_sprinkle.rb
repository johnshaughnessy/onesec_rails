class CakeSprinkle < ActiveRecord::Base
  attr_accessible :tag

  belongs_to :cake
end
