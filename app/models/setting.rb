class Setting < ActiveRecord::Base
  attr_accessible :key, :value

  validates :key, :presence => true
end
