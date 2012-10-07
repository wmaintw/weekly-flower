class Account < ActiveRecord::Base
  attr_accessible :active, :address, :name, :phone, :orders_attributes

  has_many :orders
  accepts_nested_attributes_for :orders
end
