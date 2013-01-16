class AddUuidToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :uuid, :string, :default => ""
  end
end
