class CreateUserClothings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_clothings do |t|
      t.integer :user_id
      t.integer :clothing_id
      t.string :measurements
      t.integer :size_id

      t.timestamps
    end
  end
end
