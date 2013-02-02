class Pic < ActiveRecord::Base
  attr_accessible :filename, :prefix

  validates :filename, :presence => true

  public
  def all_pics
    Pic.order("created_at DESC")
  end
end