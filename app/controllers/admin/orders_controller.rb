class Admin::OrdersController < ApplicationController
  layout "admin/admin"

  before_filter :auth_required

  def index
    order = Order.new
    @orders = order.all_orders
  end
end
