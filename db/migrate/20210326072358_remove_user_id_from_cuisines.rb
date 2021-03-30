class RemoveUserIdFromCuisines < ActiveRecord::Migration[5.2]
  def change
    remove_column :cuisines, :user_id, :integer
  end
end
