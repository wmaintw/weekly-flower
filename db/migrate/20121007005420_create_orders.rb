class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :flower
      t.references :account
      t.boolean :active
      t.string :status

      t.timestamps
    end
  end
end
