# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  payment_id    :integer
#  user_id       :bigint           not null
#  quantity      :integer
#  cuisine_name  :string(255)
#  cuisine_price :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
  # validates :cuisine_id, presence: true
  validates :quantity, presence: true
  validates :cuisine_name, presence: true, length: { maximum: 200 }
  validates :cuisine_price, presence: true

  # has_many :cuisines_orders
  # has_many :cuisines, through: :cuisines_orders
  has_and_belongs_to_many :cuisines
  belongs_to :user
end
