class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :pay
      t.boolean :settled, default: false, null: false
      t.integer :user_id
      t.timestamps
    end
  end
end