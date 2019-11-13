class CreateUserClothings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_clothings do |t|
      t.integer :user_id
      t.integer :clothing_id
      t.integer :size_id
      t.float :topNeck
      t.float :topChest
      t.float :topWaist
      t.float :topSleeve
      t.float :topFront_Length
      t.float :bottomWaist
      t.float :bottomLength
      t.float :bottomHip
      t.float :bottomThigh
      t.float :bottomBottom_Hem

      t.timestamps
    end
  end
end
