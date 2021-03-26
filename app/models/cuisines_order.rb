class CuisinesOrder < ApplicationRecord
  validates :orders_id, presence: true
  validates :cuisine_id, presence: true

  has_many :cuisines
  has_many :users
end
