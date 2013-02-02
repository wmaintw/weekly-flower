class Flower < ActiveRecord::Base
  attr_accessible :active, :description, :image, :price, :title, :details, :display_order, :orders_attributes

  has_many :orders
  accepts_nested_attributes_for :orders

  validates :title, :presence => true
  validates :price, :presence => true
  validates :image, :presence => true
  validates :description, :presence => true
  validates :details, :presence => true
  validates :display_order, :presence => true

  public
  def all_flowers
    Flower.where("active = ?", true).order("display_order DESC, updated_at DESC")
  end
end
