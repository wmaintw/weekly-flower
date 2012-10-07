class Account < ActiveRecord::Base
  attr_accessible :active, :address, :name, :phone
end
