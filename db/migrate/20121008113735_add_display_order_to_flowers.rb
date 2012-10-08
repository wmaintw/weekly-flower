class AddDisplayOrderToFlowers < ActiveRecord::Migration
  def change
    add_column :flowers, :display_order, :integer, :default => 0
  end
end
