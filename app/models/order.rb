# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  payment_id    :integer
#  cuisine_id    :integer
#  quantity      :integer
#  cuisine_name  :string(255)
#  cuisine_price :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
class Order < ApplicationRecord
  validates :cuisine_id, presence: true
  validates :quantity, presence: true
  validates :cuisine_name, presence: true
  validates :cuisine_price, presence: true
  
  has_many :cuisines_orders
  belongs_to :user
end
