class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :payment_id
      t.integer :cuisine_id
      t.integer :quantity
      t.string  :cuisine_name
      t.integer :cuisine_price
      t.timestamps
    end
  end
end