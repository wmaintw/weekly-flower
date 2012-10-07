class Flower < ActiveRecord::Base
  attr_accessible :active, :description, :image, :price, :title, :orders_attributes

  has_many :orders
  accepts_nested_attributes_for :orders
end
