class CreateClothingCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :clothing_categories do |t|
      t.integer :category_id
      t.integer :clothing_id

      t.timestamps
    end
  end
end
