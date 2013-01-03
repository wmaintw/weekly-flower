class AddDetailsToFlower < ActiveRecord::Migration
  def change
    add_column :flowers, :details, :string, :default => ""
  end
end
