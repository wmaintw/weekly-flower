class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :title
      t.string :description
      t.string :image
      t.boolean :active, :default => true
      t.integer :price

      t.timestamps
    end
  end
end
