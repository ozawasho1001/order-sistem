class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_secure_password
  
  has_many :cuisines
  
  enum role: {general: 1, admin: 99}
end