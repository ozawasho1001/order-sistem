class CreateCuisinesOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :cuisines_orders do |t|
      t.references :order, null: false, foreign_key: true, comment: '注文の参照'
      t.references :cuisine, null: false, foreign_key: true, comment: '商品の参照'
    end
  end
end
