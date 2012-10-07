class Order < ActiveRecord::Base
  attr_accessible :account, :active, :flower, :status
end
