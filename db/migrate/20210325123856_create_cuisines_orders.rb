class CreateCuisinesOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :cuisines_orders do |t|
      t.references :orders, null: false
      t.references :cuisines, null: false
    end
  end
end
