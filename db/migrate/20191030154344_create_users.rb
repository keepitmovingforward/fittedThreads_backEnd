class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :avatar
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
      t.boolean :firstTimeUser, default: true

      t.timestamps
    end
  end
end
