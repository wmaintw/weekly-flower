class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
