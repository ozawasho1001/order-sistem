class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_secure_password
  
  belongs_to :cuisines
  has_many :orders
  enum role: {general: 1, admin: 99}
end