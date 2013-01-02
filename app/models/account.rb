# encoding: utf-8

class Account < ActiveRecord::Base
  attr_accessible :active, :address, :name, :phone, :orders_attributes

  has_many :orders
  accepts_nested_attributes_for :orders

  validates_presence_of :address, :message => "请提供您的收货地址"
  validates_presence_of :name, :message => "请提供收货联系人"
  validates_presence_of :phone, :message => "请提供您的联系电话"
end
