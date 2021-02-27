class CreateCuisines < ActiveRecord::Migration[5.2]
  def change
    create_table :cuisines do |t|
      t.string :name
      t.integer :price
      t.string :text
      t.string :image
      t.timestamps
    end
  end
end
