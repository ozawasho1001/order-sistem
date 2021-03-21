class Order < ApplicationRecord
  validates :cuisine_id, presence: true
  validates :quantity, presence: true
  validates :cuisine_name, presence: true
  validates :cuisine_price, presence: true
  
  has_many :payment
  has_many :cuisine
  has_many :user
end
