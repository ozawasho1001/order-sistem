class AddUserIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :user, foreign_key: true, null: false, after: :cuisine_id
  end
end
