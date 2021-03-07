class AdduserIdTocuisines < ActiveRecord::Migration[5.2]
  def change
    add_column :cuisines, :user_id, :integer
  end
end
