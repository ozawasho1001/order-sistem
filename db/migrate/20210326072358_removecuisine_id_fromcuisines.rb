class RemovecuisineIdFromcuisines < ActiveRecord::Migration[5.2]
  def change
    remove_column :cuisines, :cuisine_id, :integer
  end
end
