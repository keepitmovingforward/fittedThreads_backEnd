class CreateSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
      t.string :size
      t.integer :clothing_id

      t.timestamps
    end
  end
end
