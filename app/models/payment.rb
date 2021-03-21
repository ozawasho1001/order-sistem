class Payment < ApplicationRecord
  validates :pay, presence: true
  validates :settled, presence: true
  validates :user_id, presence: true
  
  has_many :user
end
