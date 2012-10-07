class Order < ActiveRecord::Base
  attr_accessible :account, :active, :flower, :status

  belongs_to :flower
  belongs_to :account
end
