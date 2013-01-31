class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name, :default => ""
      t.string :phone, :default => ""
      t.string :address, :default => ""
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
