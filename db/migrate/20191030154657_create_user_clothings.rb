class CreateUserClothings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_clothings do |t|
      t.integer :user_id
      t.integer :clothing_id
      t.integer :size_id
      t.integer :topNeck
      t.integer :topChest
      t.integer :topWaist
      t.integer :topSleeve
      t.integer :topFront_Length
      t.integer :bottomWaist
      t.integer :bottomLength
      t.integer :bottomHip
      t.integer :bottomThigh
      t.integer :bottomBottom_Hem

      t.timestamps
    end
  end
end
