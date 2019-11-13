class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :avatar
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
