class Order < ActiveRecord::Base
  include ActiveModel::Validations
  attr_accessible :account, :active, :flower, :status

  validates :account, :presence => true

  belongs_to :flower
  belongs_to :account

  validate do
    if (account.address.length == 0 || account.name.length == 0 || account.phone.length == 0)
      errors.add(:account, "account address, name, phone must be presence.")
    end
  end

  def all_orders
    Order.order("id DESC")
  end
end
