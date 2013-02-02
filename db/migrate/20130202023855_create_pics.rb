class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :filename
      t.string :prefix

      t.timestamps
    end
  end
end
