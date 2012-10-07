class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :flower
      t.references :account
      t.boolean :active, :default => true
      t.string :status, :default => ""

      t.timestamps
    end
  end
end
