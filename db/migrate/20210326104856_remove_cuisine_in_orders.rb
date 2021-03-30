class RemoveCuisineInOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :cuisine_id, :integer
  end
end
